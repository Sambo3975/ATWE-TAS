local ut = require("__speedrun/utils")
local w, ew, tp, d = ut.warp, ut.endWarp, ut.tp, ut.dialog

-- local skipIdx = 3
local function skip(idx)
	return function()
		return idx <= (skipIdx or -math.huge)
	end
end

local level = {
	[0] = {
		{"when",{skip(1)},{
			{w()},
		}},
		{"when",{skip(3)},{
			{tp(-154800,-160384)},
			{function() player.speedY = -10; return -1; end},
			"u",{math.huge},
		}},
		{"when",{skip(2)},{
			{tp(-170240,-174208)},
			"rn",{math.huge},
		}},
		{"when",{skip(1)},{
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
	{ -- 1
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
	},
	{ -- 2
		{"when",{"x","<",-154816},{
			"rn",{"x",">=",-159552},
			"jrn",{8},
			"rn",{"x",">=",-159296},
			"jrn",{"md"},
			"rn",{{"x",">=",-158624},{2}},
			"ln",{{"x","<=",-158752},{3}},
			"rn",{"x",">=",-158336},
			"arn",{"md"},
			{"dotimes",2,{
				"rn",{"tg"},
				"jrn",{2},
			}},
			"rn",{{"tg"},{"ntg"},{"tg"}},
			"ln",{"ml"},
			"",{188},
			"rn",{{"x",">=",-157376},{3}},
			"ln",{{"ntg"},{1}},
			"",{"tg"},
			"jrn",{16},
			{"dotimes",2,{
				"rn",{"tg"},
				"jrn",{"md"},
			}},
			"rn",{{"x",">=",-156256-64},{2}},
			"ar",{1},
			{"dotimes",8,{
				"r",{{"md"},{"mu"}},
			}},
			"jl",{8},
			"",{32},
			"r",{"tg"},
			"",{101},
			"r",{"x",">=",-155392},
			"",{21},
			"rn",{"x",">=",-155232},
			"jrn",{4},
			"rn",{"tg"},
			"jrn",{10},
			"rn",{"tg"},
			"jrun",{math.huge},
		}},
	},
	{
		"rn",{"tg"},
		"ar",{8},
		"",{{"md"},{"mu"}},
		"jln",{8},
		"ln",{55},
		"l",{1},
		"rn",{35},
		"ln",{"tg"},
		"aln",{1},
		"ln",{26},
		"rn",{"tg"},
		"",{160},
		"rn",{"x",">=",-139680},
		"arn",{1},
		"rn",{8},
		"ln",{"ml"},
		"",{16},
		"jln",{{"mu"},{9}},
		"",{43},
		"rn",{{"x",">=",-139648},{1}},
		"jrn",{"md"},
		"rn",{"x",">=",-139393},
		"",{128},
		{"dotimes",14,{
			"a",{{"md"},{"mu"}},
		}},
		"a",{17},
		"aln",{20},
		"ln",{"tg"},
		"jln",{1},
		"ln",{{1},{"tg"}},
		"jlun",{math.huge},
	},
}

return level