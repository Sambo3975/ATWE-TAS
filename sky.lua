local ut = require("__speedrun/utils")
local pow, tp, d = ut.pow, ut.tp, ut.dialog
local w = ut.warp
local ew = ut.endWarp
local lu = require("__runs/__localutils")

GameData.watchedReznorIntro = false

local function notPaused()
	return not Misc.isPaused()
end

-- GameData.skipIdx = 3
-- GameData.skipIdx = GameData.skipIdx or 100
local function skip(idx)
	return function()
		return idx <= (GameData.skipIdx or -math.huge)
	end
end

return {
	[0] = {
		-- before getting the Dragon Coin / after clearing not so watery
		{"when",{"x","<=",-191488},{
		
			-- SKIPS - to be used only during testing
		
			-- tp to checkpoint 1
			{"when",{skip(100)},{
				"",{1},
				{lu.snapCamera},
				{tp(-193024,-200096-128)},
				"",{{"ntg"},{"tg"}},
				{function()
					GameData.skipIdx = 1
					Level.exit()
					return -1
				end},
			}},
			{"when",{skip(1)},{
				{w()},
			}},
			{"when",{skip(2)},{
				{pow(PLAYER_ICE)},
			}},
			{"when",{skip(3)},{
				{tp(-139808,-140128-32)},
				"",{math.huge}, -- have to add this so we don't fall through to the next tp
			}},
			{"when",{skip(2)},{
				{tp(-153984,-160416)},
				"u",{math.huge},
			}},
			{"when",{skip(1)},{
				{tp(-187488,-200288)},
				"rn",{math.huge},
			}},
			
			-- NORMAL RUN

			-- before clearing not so watery
			{"unless",{"x",">",-193120},{
		
				-- shortcut to section 1
				-- {pow(2)},
				-- {tp(-191312,-200192-player.height)},
				-- "ju",{math.huge},
				
				-- shortcut to section 4
				-- {ut.warp()}, -- if this is uncommented, uncomment line 167 as well
				-- {tp(-188208,-200416+32)},
				-- {function() player.speedY = -10 return -1 end},
				-- "u",{math.huge},
			
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
				"jrun",{math.huge}, -- to section 1
			}},
			
			-- after clearing not so watery
			"rn",{"x",">=",-192992},
			"jrn",{6},
			"rn",{"x",">=",-192736},
			"jrn",{18},
			{"dotimes",2,{
				"rn",{"snpc"},
				"jrn",{"md"},
			}},
			"rn",{"x",">=",-191360},
			"jrn",{4},
			"rn",{"x",">=",-190880},
			"jrn",{1},
			"rn",{"snpc"},
			"jrn",{"md"},
			"rn",{{"snpc"},{16}},
			"jrn",{8},
			"rn",{{"md"},{"mu"}},
			"ln",{"ml"},
			"",{{"md"},{"mu"}},
			"j",{1},
			"rn",{{"snpc"},{8}},
			"jrn",{"md"},
			"rn",{"snpc"},
			"jrn",{{"md"},{"tg"}},
			"ln",{41},
			"rn",{"mr"},
			{"dotimes",80,{
				{"randomInput",{"u","d"},1}
			}},
			"rn",{{"x",">=",-188960},{5}},
			"jrn",{12},
			"rn",{"snpc"},
			"jrn",{"md"},
			"rn",{"snpc"},
			"jrn",{1},
			"rn",{{1},{"tg"}},
			"jrn",{"md"},
			"rn",{math.huge}, -- to section 2
		}},
		
		-- after getting the Dragon coin
		"rn",{{"x",">=",-190880+4},{3}},
		"jrn",{"md"},
		"rn",{"snpc"},
		"jrn",{1},
		"rn",{{1},{"snpc"}},
		"jrn",{"md"},
		"rn",{"x",">=",-189248},
		"jrn",{1},
		"rn",{{1},{"tg"}},
		"ln",{"ml"},
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
	{ -- section 1: Dragon Coin
		-- shortcut back to section 0
		-- "d",{math.huge},
	
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
		"d",{math.huge}, -- back to section 0 (will start on line 165)
	},
	{ -- 2
		-- before getting last Dragon Coin
		{"when",{"x","<",-154000},{
			"rn",{"x",">=",-159680},
			"jrn",{"md"},
			"rn",{"x",">=",-159200},
			"jrn",{"md"},
			"rn",{"tg"},
			"jrn",{8},
			"rn",{{"md"},{"mu"}},
			"jrn",{"md"},
			"rn",{"x",">=",-158400},
			"arn",{1},
			"rn",{"x",">=",-157632},
			"arn",{4},
			"rn",{{"md"},{"mu"}},
			"jrn",{"md"},
			"rn",{{"tg"},{1}},
			"jrn",{"md"},
			"rn",{"tg"},
			"jrn",{2},
			"rn",{"md"},
			"r",{1},
			"run",{1},
			"r",{1},
			"rn",{"snpc"},
			"ln",{32},
			"",{16},
			"jrn",{"md"},
			"rn",{"snpc"},
			"jrn",{8},
			"rn",{"x",">=",-155488},
			"arn",{1},
			"rn",{{"md"},{"mu"}},
			"jrn",{8},
			"rn",{{"tg"},{4}},
			"jrn",{"md"},
			"rn",{"tg"},
			"jrn",{8},
			"rn",{"tg"},
			"jrn",{"md"},
			"run",{math.huge}, -- to section 3
		}},
		
		-- after getting last Dragon Coin
		"rn",{"mu"},
		"jrn",{1},
		"rn",{"x",">=",-153344},
		"jrn",{"md"},
		"rn",{"tg"},
		"jrn",{"md"},
		"rn",{"x",">=",-152480},
		"jrn",{8},
		"rn",{math.huge},
	},
	{ -- 3: Dragon Coin
		{"when",{skip(3)},{
			"d",{math.huge},
		}},
		"r",{{"nfs"},{1}},
		"rn",{"x",">=",-139664},
		"rn",{31},
		"jln",{1},
		"ln",{"x","<=",-139536},
		"jln",{11},
		"ln",{"tg"},
		"d",{math.huge},
	},
	{ -- 4: Reznor fight
		-- when a shell hits a Reznor, all shells are immediately removed, ruling out the possibility of any significant skip
		"jln",{"x","<=",-119792+1},
		{"while",{"ntg"},{
			"r",{1},
			"l",{1},
		}},
		-- {ut.endWarp()},
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
		"",{256}, -- 248
		"ln",{"hnpc"},
		"rn",{1},
		"ru",{1}, -- hit first Reznor
		"",{1092},
		"ln",{"hnpc"},
		"rn",{1},
		"ru",{1}, -- hit second Reznor
		"",{{"mr"},{"sx","<",0},{"mr"},{"sx","<",0},{12}},
		"rn",{"mr"},
		"",{{"sx","<",0},{4}},
		"rn",{"mr"},
		"j",{12},
		"",{{"sx","<",0},{"mr"}},
		"r",{64},
		"jr",{24},
		"",{"md"},
		"l",{"tg"},
		"",{32},
		"j",{12},
		"",{32},
		"jl",{8},
		"",{32},
		"l",{8},
		"",{407},
		"ln",{"hnpc"},
		"rn",{1},
		"ru",{1}, -- hit third Reznor
		"rn",{48},
		"jr",{12},
		"",{336},
		{"dotimes",3,{
			"j",{12},
			"",{"tg"},
		}},
		"jr",{36},
		"",{384},
		"ln",{48},
		"rn",{40},
		"",{237},
		"ln",{"hnpc"},
		"rn",{1},
		"ru",{1}, -- hit fourth Reznor
	},
}