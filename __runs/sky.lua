local ut = require("__speedrun/utils")
local pow, tp, d = ut.pow, ut.tp, ut.dialog

return {
	[0] = {
		{"when",{"x","<=",-191488},{
			-- shortcut to section 1
			{pow(2)},
			{tp(-191312,-200192-player.height)},
			"ju",{math.huge},
		
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
		"rn",{{"x",">=",-190880},{4}},
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
	{
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
	}
}