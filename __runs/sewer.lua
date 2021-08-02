local utils = require("__speedrun/utils")
utils.showSpeeds = true
local st = utils.startTimer
local et = utils.stopTimer
local d = utils.dialog

local fg = { -- flip gate
	-- 8 ticks for the punch timer (expandedNets:L269), then Mario enters the INVISIBLE forced state until the flip animation completes (L253)
	"n",{"then",{{8},{"nfs"}}},
}

return {
	[0] = {
		-- start to first foreground wall
		"rn",{"then",{{"iw"},{5}}}, -- can't actually move until hitting the water
		"jrun",{"then",{{"mu"},{"md"}}}, -- jump out onto the platform
		"rn",{"then",{{"x",">=",-199264},{10}}},
		"jrn",{80}, -- jump up to be hit by the Koopa (we want to be smol Mario)
		"run",{"cl"}, -- grab the fence
		"jln",{"md"}, -- jump up to the platform with the gate
		"ln",{"x","<=",-199296},
		"jln",{4},  -- jump up to the fence with the gate
		"ln",{"md"},
		"u",{1}, -- grab the fence
		{"do",fg}, -- punch the gate to flip it
		"jrn",{1}, -- jump off the fence
		"rn",{"then",{{"x",">=",-198816-32},{1}}}, -- get far enough to the right to flip the gate far above
		
		-- up to the first background wall
		"jrun",{"cl"},
		{"dotimes",3,{ -- climb up the lower fence
			"u",{1},
			"j",{8},
		}},
		"u",{1},
		"j",{"y","<=",-200672},
		"ju",{"cl"}, -- jump up to the upper fence
		{"dotimes",6,{ -- climb the upper fence up to the gate
			"u",{1},
			"j",{8},
		}},
		"u",{1},
		"j",{5},
		"u",{1}, -- grab gate
		{"do",fg}, -- flip gate
		"r",{6}, -- move to the right a bit so we can make the jump without needing to grab the fence again
		"jrn",{7}, -- jump to the platform on the right
		"rn",{"then",{{"tg"},{10}}},
		"jrn",{"md"}, -- jump off the edge to get down to the first Dragon Coin.
		"rn",{"then",{{"x",">=",-197984},{28}}},
		
		-- side route for the first Dragon Coin
		"ln",{8}, -- stop as far to the left on the gate as possible
		-- "",{8},
		"u",{1},   -- do the ol' grab 'n' flip
		{"do",fg},
		"jrn",{"then",{{"y",">=",-200320},{1}}}, -- jump to the next fence
		"u",{1},
		"jrn",{20}, -- jump as far to the right as possible on the fence
		"rn",{"then",{{"y",">=",-200320},{1}}},
		"u",{1},
		"jrn",{1}, -- jump off
		"rn",{"tg"},
		"jrn",{32}, -- grab the Dragon Coin
		"u",{1},
		"j",{8}, -- jump up the fences so fast we touch the top of the camera
		"u",{1},
		"jln",{9},
		"u",{1},
		{"dotimes",2,{
			"j",{8},
			"u",{1},
		}},
		"jrn",{11},
		"u",{1},
		"j",{4}, -- jump up trough the floor
		
		-- up to the split in the path
		"jrn",{16},
		"rn",{"tg"},
		"jrn",{"md"},
		"u",{1}, -- grab the fence
		"jrn",{14}, -- jump up to the ledge on the right
		"rn",{"then",{{"x",">=",-196448},{3}}},
		"jrn",{55},
		"u",{1}, -- grab onto the very right edge of the first fence
		"jrn",{14},
		"run",{"cl"}, -- grab the second fence
		"jrn",{"then",{{1},{"md"}}}, -- jump up onto the ?-block so we can pass the second fence a bit faster
		"rn",{"then",{{"tg"},{4}}},
		"jrn",{1}, -- jump over to the ledge on the right
		
		"rn",{"then",{{1},{"tg"}}},
		-- left path
		"rn",{16},
		"jrn",{5},
		"rn",{34},
		"ln",{"ml"},
		"",{5},
		"rn",{"then",{{"tg"},{30}}},
		"jrn",{1},
		"rn",{"md"},
		"u",{1},
		{"do",fg},
		"jrn",{1},
		"rn",{"x",">=",-194304},
		"jrn",{4},
		"rn",{"then",{{"x",">=",-193984-64},{6}}},
		"jrn",{"md"},
		"u",{1},
		"jrn",{"then",{{1},{"md"}}},
		"u",{1},
		"jrn",{16},
		"u",{1},
		"jrn",{"then",{{1},{"md"}}},
		"run",{"cl"},
		"jrn",{"then",{{1},{"md"}}},
		"u",{1},
		"jrn",{10},
		"rn",{"x",">=",-192544},
		"jrn",{"dead"}, -- dying right after the checkpoint moves us forward
	},
	nil, -- we never go to section 1
	nil, -- section 2 is inaccessible
	{
		"rn",{"then",{{"x",">=",-139232},{4}}},
		"jrn",{"md"},
		"rn",{"then",{{"x",">=",-138528},{3}}},
		"jrn",{16},
		"rn",{"snpc"},
		"jrn",{1},
		"rn",{"then",{{"x",">=",-137792},{3}}},
		"jrn",{12},
		"rn",{"snpc"},
		"jrn",{"md"},
		"run",{"cl"},
		"jrn",{"then",{{1},{"md"}}},
		"rn",{"tg"},
		"jrn",{1},
		"rn",{"then",{{1},{"tg"}}},
		"jrn",{16},
		"rn",{"snpc"},
		"jrn",{1},
		"rn",{16},
		"ln",{8},
		"rn",{"snpc"},
		"ln",{9},
		"rn",{16},
		"jrn",{4},
		
		"rn",{math.huge},
	},
}