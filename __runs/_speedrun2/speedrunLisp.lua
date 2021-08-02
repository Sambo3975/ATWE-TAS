local tableinsert, tablreremove = table.insert, table.remove

local sl = {}

--[[

rn 4
------
{"input","rn",{4}},

rn >= x 200
-------------
{"input","rn",{">=","x",200}},

rn >= x 200 4
---------------
{"input","rn",{">=","x",200},{4}},

(dotimes 10 (
	jrn md
	rn tg
))
---------------
{"push","__pos",10},
{"input","jrn",{"md"}},
{"input","rn",{"tg"}},
{"-1","__pos"},
{"j>","__pos",0,-3},
{"pop","__pos"},

(if (>= x 200)
		(
			ln 100
			jln 12
		)
	(
		rn 32
		jrn md
	)
)
--------------------
{"ji",{">=","x",200},4},
{"input","rn",{32},
{"input","jrn",{"md"}},
{"j",3},
{"input","ln",{100}},
{"input","jln",{12}},

(foreach xp (100 500) (
	rn >= x xp
	jrn md
))
-------------------------
{"push"},
{"set","__arr",{100,500}},
{"set","__pos",1},
{"index","__arr","__pos","xp"},
{"jn","xp",5},
{"input","rn",{">=","x","xp"}},
{"input","jrn",{"md"}},
{"+1","__pos"},
{"j",-5},
{"pop"},

]]

local UNDEFINED = "__undefined__"
local function localize(value)
	if value == nil then
		return UNDEFINED -- need this so setting a variable to nil in a local scope will work.
	end
	return value
end

local frames = {{}}
local addr = 1

local playerFieldMap = {
	x = "x",
	y = "y",
	sx = "speedX",
	sy = "speedY",
}

--- input: Simulate player input until one or more conditions are met. This is a blocking instruction.
-- @tparam string input The input codes.
-- @tparam table condition The condition to check. When this condition becomes true, either the next condition will be checked, or the next instruction will be executed. This parameter may be repeated any number of times. The first entry in each condition table must be one of these:
--	time:number - A timer that will decrement once each tick. When it reaches 0, the condition becomes true.
--	builtin:string - The name of a built-in condition to check.
--	custom:function - A boolean function that takes a table as an argument. Not sure how this will work...

--- gset: Set the value of a variable at the top scope.
-- @tparam string var The name of the variable to set.
-- @tparam any value The value to set.
-- local function globalSetVar(args)
	-- local symbol = args[2]
	-- local value = args[3]
	
	-- frames[1][symbol] = value
-- end

--- set: Set the value of a variable in the current scope.
-- @tparam string var The name of the variable to set.
-- @tparam any value The value to set.
local function setVar(args)
	local symbol = args[2]
	local value = localize(args[3])
	
	frames[#frames][symbol] = value
end

--- get: Get the value of a variable that is defined in this scope or above.
-- @tparam string var The name of the variable to get.
-- @return any The value of the variable.
local function getVar(args)
	local symbol = args[2]
	
	for i = #frames,1,-1 do
		local val = frames[i][symbol]
		if val ~= nil then
			if val == UNDEFINED then
				return nil
			end
			return val
		end
	end
end

--- index: Get the value of a table at a specific index.
-- @tparam string table The variable with a table to index.
-- @tparam any index The index in the table.
-- @return any The value in <table> at <index>.
local function index(args)
	local tbl = getVar{nil, args[2]}
	local idx = args[3]
	
	local t = type(tbl)
	if t ~= "table" then
		error("Attempt to index variable '"..args[2].."' (a "..t.." value)")
	end
	
	return tbl[idx]
end

--- push: Enter a new scope below the current one.
local function push()
	tableinsert(frames, {})
end

--- pop: Exit from this scope to the one above.
local function pop()
	if #frames == 1 then
		error("Attempt to exit top-level scope")
	end
	tableremove(frames, #frames)
end

--- j>: Jump to a relative address if the first value is greater than the second.
-- @tparam any val1 The first value.
-- @tparam any val2 The second value.
-- @tparam int jump. The relative jump address.
local function jumpIfGreaterThan(args)
	if args[2] > args[3] then
		addr = addr + args[4] - 1 -- one will always be added after an instruction finishes
	end
end

--- j=: Jump to a relative address if the first value is equal to the second.
-- @tparam any val1 The first value.
-- @tparam any val2 The second value.
-- @tparam int jump. The relative jump address.
local function jumpIfEqual(args)
	if args[2] == args[3] then
		addr = addr + args[4] - 1 -- one will always be added after an instruction finishes
	end
end

--- jn: Jump to a relative address if the parameter is nil
-- @tparam string var The variable to check
local function jumpIfNil(args)
	if args[2] == nil then
		addr = addr + args[3] - 1 -- one will always be added after an instruction finishes
	end
end

--- ji: Jump if the given condition is true
-- @tparam Condition condition The condition to check.

--- j: Unconditional jump
local function jump(args)
	addr = addr + args[2] - 1
end

return sl