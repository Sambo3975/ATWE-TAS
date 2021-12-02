local ut = require("__speedrun/utils")
local pow, tp, d = ut.pow, ut.tp, ut.dialog

GameData.watchedReznorIntro = false

local function notPaused()
	return not Misc.isPaused()
end

local stoppedShell = false
local function stopLastShell()
	Routine.run(function()
		while not stoppedShell do
			for _,v in NPC.iterate(113) do
				local isLastShell
				if v.x <= -119536 then
					isLastShell = true
					for _,o in NPC.iterateIntersecting(v.x + 36, v.y - 16, v.x + 60, v.y + 64) do
						if o.id == 113 then
							isLastShell = false
						end
					end
				end
				if isLastShell then
					-- Misc.dialog("stopping shell")
					v.speedX = 0
					v.x = -119280
					stoppedShell = true
					break
				end
			end
			Routine.skip()
		end
	end)
	return -1
end

return {
	[0] = {
		{"when",{"x","<=",-191488},{
			-- shortcut to section 1
			-- {pow(2)},
			-- {tp(-191312,-200192-player.height)},
			-- "ju",{math.huge},
			
			-- shortcut to section 4
			{tp(-188208,-200416+32)},
			{function() player.speedY = -10 return -1 end},
			"u",{math.huge},
		
			"rn",{{"x",">=",-199808},{4}},  -- equivalent to "rn",{"then",{"x",">=",-199808},{4}},
			"jrn",{1},
			"rn",{"snpc"},
			"jrn",{"md"},
			"rn",{{"x",">=",-199200},{4}},
			"jrn",{"md"},
			"rn",{"snpc"},
			"jrn",{"md"},
			"rn",{{"tg"},{4}},
			"jrn",{"md"},
			"rn",{"x",">=",-197504},
			"jrn",{12},
			"ln",{{"md"},{"mu"}},
			"jrn",{"md"},
			"rn",{"snpc"},
			"arn",{"md"},
			"rn",{"x",">=",-196064},
			"jrn",{1},
			"rn",{{"x",">=",-195776},{3}},
			"jrn",{1},
			"rn",{"snpc"},
			"jrn",{"md"},
			"rn",{"tg"},
			"jrn",{2},
			"rn",{"tg"},
			"jrn",{12},
			"rn",{"snpc"},
			"ln",{{"ml"},{27}},
			"rn",{{"mr"},{42}},
			"jrn",{"md"},
			"rn",{{"snpc"},{4}},
			"jrn",{"md"},
			"rn",{"snpc"},
			"arn",{"md"},
			"rn",{"x",">=",-193184},
			"jrn",{1},
			"rn",{"x",">=",-192992},
			"jrn",{4},
			"rn",{"x",">=",-192704-64},
			"jrn",{20},
			"rn",{"snpc"},
			"jrn",{"md"},
			"rn",{"snpc"},
			"jrn",{16},
			"rn",{{"tg"},{3}},
			
			"jrun",{math.huge},
		}},
		"rn",{{"x",">=",-190880+4},{4}},
		"jrn",{"md"},
		"rn",{"snpc"},
		"jrn",{1},
		"rn",{{1},{"snpc"}},
		"jrn",{"md"},
		"rn",{"x",">=",-189248},
		"jrn",{1},
		"rn",{{1},{"tg"}},
		"ln",{"ml"},
		-- "",{128},
		-- {"dotimes",64,{
			-- "u",{1},
			-- "d",{1},
		-- }},
		{"dotimes",128,{
			{"randomInput",{"u","d"},1}
		}},
		"jrn",{24},
		"rn",{"snpc"},
		"ln",{"ml"},
		-- "",{64},
		{"dotimes",6,{
			"d",{1},
			"",{1},
			"u",{1},
			"ru",{1},
			"",{1},
			"d",{1},
			"",{1},
			"u",{1},
			"ul",{1},
			"",{1}
		}},
		{"dotimes",4,{
			{"randomInput",{"u","","d"},1}
		}},
		"rn",{38},
		"jrun",{math.huge}, -- to section 4
		
		"",{math.huge},
	},
	{ -- section 1
		-- shortcut back to section 0
		"d",{math.huge},
	
		"",{{"nfs"},{1}},
		"jrn",{6},
		"rn",{{"md"},{"mu"}},
		"j",{"snpc"},
		"",{1},
		"jr",{11},
		"jln",{"md"},
		"",{6},
		"rn",{"mu"},
		"ln",{"ml"},
		"d",{math.huge},
	},
	nil, -- 2
	nil, -- 3
	{ -- 4: Reznor fight
		"jln",{"x","<=",-119792+1},
		{"while",{notPaused},{
			"r",{1,ignorePause=true},
			"l",{1},
		}},
		{"dotimes",2,{
			"",{Misc.isPaused},
			{"while",{Misc.isPaused},{
				"",{1},
				"j",{1},
			}},
		}},
		"",{224,ignorePause=false},
		"j",{12},
		"",{"tg"},
		"rn",{56},
		"jrn",{24},
		"rn",{"md"},
		"ln",{"ml"},
		"rn",{"tg"},
		{"dotimes",5,{
			"j",{1},
			"",{"tg"},
		}},
		"l",{21},
		"",{"mr"},
		{"dotimes",16,{
			"d",{1},
			"",{1},
			"u",{1},
		}},
		"",{1},
		-- {stopLastShell},
		"j",{18},
		"",{{"md"},{"mu"}},
		-- "",{{"md"},{"mu"},{"md"},{"mu"}},
		"ln",{4},
		"r",{"mr"},
		-- "",{"mu"},
		"",{{"md"},{"mu"}},
		"jln",{"md"},
		
		-- "jr",{1},
		-- "j",{4},
		-- "",{"tg"},
		-- "ln",{46},
		-- "rn",{"hnpc"},
		-- "ru",{1},
		-- "rn",{4},
		-- "jrn",{12},
		-- "rn",{"tg"},
		-- "arn",{8},
		-- "rn",{"md"},
		-- "ln",{"tg"},
		-- "jln",{8},
		-- "rn",{24},
		-- "ln",{"tg"},
		-- "",{1},
		-- "jr",{1},
		-- {"while",{"mu"},{
			-- "jl",{1},
			-- "jr",{1},
		-- }},
		-- {"while",{"ntg"},{
			-- "jr",{1},
			-- "jl",{1},
		-- }},
		-- {"dotimes",20,{
			-- "u",{1},
			-- "ru",{1},
			-- "",{1},
			-- "d",{1},
			-- "",{1},
			-- "u",{1},
			-- "lu",{1},
			-- "",{1},
			-- "d",{1},
			-- "",{1},
		-- }},
		-- "aln",{12},
		-- "ln",{20},
		-- "",{"tg"},
		-- "ln",{64},
		-- "jln",{1},
		-- "",{"tg"},
		-- "rn",{{"mr"},{"ml"}},
		-- "ln",{"mr"},
		-- "rn",{"ml"},
		-- "ln",{"mr"},
		-- "rn",{8},
		-- "jrn",{1},
		-- "rn",{"ml"},
		-- "ln",{"mr"},
		-- "rn",{8},
		-- "jrn",{"md"},
		-- "rn",{"tg"},
		-- "jrn",{14},
		-- "rn",{"tg"},
		-- "ln",{13},
		-- "a",{2},
		-- "",{{"tg"},{22}},
		-- "rn",{"hnpc"},
		-- "ru",{1},
		-- "rn",{4},
		-- "jrn",{12},
		-- "",{"tg"},
		-- "jl",{1},
		-- "l",{{1},{"tg"}},
		-- "",{52},
		-- "jln",{4},
		-- "ln",{"tg"},
		-- "jrn",{5},
		-- "rn",{"tg"},
		-- "jln",{16},
		-- "ln",{"tg"},
		-- {"while",{"or",{"y","<=",-118944},{"ntg"}},{
			-- "r",{1},
			-- "l",{1},
		-- }},
		-- "jrn",{"md"},
		-- "rn",{"ml"},
		-- "",{"tg"},
		-- "jrn",{12},
		-- "rn",{"tg"},
		-- "ln",{"ntg"},
		-- "",{"tg"},
		-- "jrn",{"md"},
		-- "rn",{"ml"},
		-- "",{"tg"},
		-- "j",{1},
		-- "ln",{{1},{"tg"}},
		
		-- "jln",{1},
		-- "ln",{"tg"},
	},
}