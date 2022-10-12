local ut = require("__speedrun/utils")
local w, ew, tp, d = ut.warp, ut.endWarp, ut.tp, ut.dialog

-- local skipIdx = 1
local function skip(idx)
	return function()
		return idx <= (skipIdx or -math.huge)
	end
end

local level = {
	[0] = {
		{"when",{skip(1)},{
			{w()},
			{tp(-198944,-200128)},
			"rn",{math.huge},
		}},
		"ln",{"x","<=",-199935},
		"",{116},
		"rn",{34},
		"arn",{"md"},
		"rn",{"mu"},
		"jrn",{"md"},
		"rn",{math.huge},
	},
	{
		-- {ew()},
		"rn",{"x",">=",-179680},
		"jrn",{8},
		"rn",{"x",">=",-179456},
		"jrn",{1},
		"rn",{{"x",">=",-179200},{8}},
		"jrn",{2},
		"rn",{"tg"},
		"jrn",{7},
		"rn",{"tg"},
		"jrn",{10},
		"rn",{"tg"},
		"jrn",{2},
		"rn",{{"x",">=",-178368},{5}},
		"ln",{{"ntg"},{"tg"},{28}},
		"aln",{1},
		"ln",{{"x","<=",-178400},{8}},
		"rn",{{"ntg"},{"tg"}},
		"arn",{"md"},
		"rn",{"x",">=",-178048},
		"jrn",{4},
		"rn",{{"x",">=",-177184},{1}},
		"jln",{"md"},
		"ln",{{"x","<=",-177344},{1}},
		"jrn",{"md"},
		"rn",{"x",">=",-176737},
		"",{205},
		"ln",{34},
		"rn",{"x",">=",-176608},
		"jrn",{16},
		"rn",{"tg"},
		"jrn",{4},
		"rn",{"tg"},
		"jrn",{"md"},
		"rn",{"x",">=",-174976},
		"jrn",{1},
		"rn",{"x",">=",-174752},
		"jrn",{1},
		"rn",{"x",">=",-174336},
		"jrn",{1},
		"rn",{"x",">=",-173952},
		"jrn",{1},
		"rn",{"x",">=",-173632},
		{"dotimes",3,{
			"jrn",{4},
			"rn",{"tg"},
		}},
		"jrn",{1},
		"rn",{{1},{"tg"}},
		"ln",{"ml"},
		"",{176},
		"ar",{1},
		"r",{16},
		"",{{"md"},{"mu"}},
		"r",{2},
		{"dotimes",3,{
			"",{{"md"},{"mu"}},
		}},
		{"dotimes",3,{
			"r",{{"md"},{"mu"}},
		}},
		"jr",{4},
		"r",{{"md"},{"mu"}},
		"jr",{"md"},
		{"dotimes",6,{
			"r",{{"md"},{"mu"}},
		}},
		"jr",{"md"},
		"r",{16},
		"l",{16},
		{"dotimes",7,{
			"r",{{"md"},{"mu"}},
		}},
		"jl",{2},
		"jr",{"md"},
		{"dotimes",3,{
			"r",{{"md"},{"mu"}},
		}},
		"jr",{4},
		"r",{{"md"},{"mu"}},
		"jrn",{"md"},
		"rn",{math.huge},
	}
}

-- registerEvent(level, "onTick")
-- function level.onTick()
	-- for _,v in NPC.iterate(756, player.section) do
		-- v.x = player.x
		-- if v.x >= -199452+96 then
			-- v:kill(1)
		-- end
	-- end
-- end

return level