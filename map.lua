local lu = require("__runs/__localutils")
local utils = require("__speedrun/utils")
local d = utils.dialog

GameData.speedrunProgress = GameData.speedrunProgress or 0

local inputs = {
	nil, -- this level runs before intro as well
	{
		-- enable quick death
		{lu.pause},
		"",{lu.canInputToMenu},
		"d",{1},
		"j",{1},
		"",{lu.canInputToMenu},
		"d",{1},
		"",{1},
		"d",{1},
		"j",{1},
		"n",{1},
		"",{lu.canInputToMenu},
		"n",{1},
		"",{lu.canInputToMenu},
		
		-- navigate to the first level and enter it
		"r",{1},
		{"dotimes",100,{
			"",{1},
			"j",{1},
		}},
	},
	{ -- navigate to level 2 and enter it
		{"dotimes",500,{
			"",{1},
			"ju",{1},
		}},
	},
	{ -- navigate to level 3 and enter it
		{"dotimes",500,{
			"",{1},
			"jl",{1},
		}},
	},
	{ -- navigate to the secret level and enter it
		{"dotimes",500,{
			"",{1},
			"jd",{1},
		}},
	},
}

--[[
return{

	-- determine position
	{"set","$levels",{9,35}}, -- *, **
	{"set","$end",43}, -- ***
	{"jw","$GD_speedrunProgress",2},  -- the $GD_ prefix indicates a GameData field; $SD_ indicates a SaveData field
	{"set","$GD_speedrunProgress",0}, -- speedrunProgress defaults to 0
	{"+1","$GD_speedrunProgress"},
	{"index","$dest","$levels","$GD_speedrunProgress"},
	{"jw","$dest","$dest",true},
	{"jmp","$end",true}, -- no instructions for this level yet
	
	-- enable Quick Death in the menu
	{"lua","lu.pause"}, -- *
	{"inp","",1},
	{"ju",{"lua","lu.canInputToMenu"},-1},
	{"inp","d",1},
	{"inp","j",1},
	{"inp","",1},
	{"ju",{"lua","lu.canInputToMenu"},-1},
	{"inp","d",1},
	{"inp","",1},
	{"inp","d",1},
	{"inp","j",1},
	{"inp","n",1},
	{"inp","",1},
	{"ju",{"lua","lu.canInputToMenu"},-1},
	{"inp","n",1},
	{"inp","",1},
	{"ju",{"lua","lu.canInputToMenu"},-1},
	
	-- navigate to the first level and enter it
	{"inp","r",1},
	{"push"},
	{"set","$_reps",100},
	{"inp","",1},
	{"inp","j",1},
	{"-1","$reps"},
	{"jlt",0,"$reps",-3},
	{"pop"},
	{"jmp","$end",true},
	
	-- navigate to level 2 and enter it
	{"push"}, -- **
	{"set","$_reps",500},
	{"inp","",1},
	{"inp","ju",1},
	{"-1","$reps"},
	{"jlt",0,"$reps",-3},
	{"pop"},
	{"jmp","$end",true},
	
	-- ***
}
--]]

GameData.speedrunProgress = GameData.speedrunProgress + 1
-- GameData.speedrunProgress = 1

local currentInputs = inputs[GameData.speedrunProgress] or {}
-- Misc.dialog(currentInputs)
currentInputs.global = true
return currentInputs
