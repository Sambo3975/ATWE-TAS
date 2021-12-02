-- local utils = require("__speedrun/utils")
-- local st = utils.startTimer
-- local et = utils.stopTimer
-- local d = utils.dialog
-- local tp = utils.tp
-- local pow = utils.pow

return {
	[0] = { -- section 0
		{"if",{"x","<",-199840},
				{ -- up to Warp 1
					-- {pow(PLAYER_BIG)}, -- sect1, sect1end
					-- shortcut to section 1
					-- {tp(-195120,-200096+32-player.height)},
					-- "d",{100},
					-- shortcut to section 1 end - causes a camera glitch for some reason
					-- {tp(-179920,-180284)},

					-- {st}, 
					-- time: 354
					"rn",{"x",">=",-199840},
					"jrn",{1}, -- jump onto the arch sizable
					"rn",{"x",">=",-199520-48},
					"jrn",{1}, -- onto the ground to the right of that
					"rn",{"then",{{"ntg"},{"tg"}}},
					"jrn",{1}, -- over the upward slope to avoid speed loss
					"rn",{"then",{{"x",">=",-198752},{3}}}, -- run off the ledge; up to the slope in the lower area
					"jrn",{12}, -- jump onto the grass sizable
					"rn",{"tg"},
					"jln",{6},  -- up to the high ledge
					"jrn",{15},
					"rn",{"x",">=",-198272},
					
					-- time: 367
					-- "rn",{"x",">=",-199840},
					-- "jrn",{1}, -- jump onto the arch sizable
					-- "rn",{"x",">=",-199520-48},
					-- "jrn",{1}, -- onto the ground to the right of that
					-- "rn",{"then",{{"ntg"},{"tg"}}},
					-- "jrn",{1}, -- over the upward slope to avoid speed loss
					-- "rn",{"then",{{"x",">=",-198752},{3}}}, -- run off the ledge; up to the slope in the lower area
					-- "jrn",{12}, -- jump onto the grass sizable
					-- "rn",{16},
					-- "ln",{"tg"},
					-- "jln",{10},
					-- "ln",{"tg"},
					-- "jrn",{9},
					-- "rn",{"x",">=",-198272},
					-- {et},
					"jrn",{"md"}, -- collect the first dragon coin
					"rn",{"x",">=",-197504},
					"jrn",{1}, -- jump up to the next arch sizable
					"rn",{"x",">=",-196704},
					"jrn",{9}, -- up to the next ground platform
					"rn",{"x",">=",-196192}, -- run down the slope for maximum speed
					"jrn",{4}, -- collect the Midpoint to get into the Big state (will need this for the third Dragon Coin)
					"rn",{"tg"},
					"jrn",{10},
					"rn",{"tg"},
					"arn",{11},
					"rn",{"then",{{"md"},{"mu"}}},
					"jrn",{6},
					"rn",{"tg"},
					"d",{1}, -- enter the pipe where Dragon Coin 2 resides
				},
			{ -- after returning through warp 1
				"",{"nfs"}, -- wait until after exiting pipe
				"ln",{16}, -- move to the left a bit to give us more speed for the jump (and also to give the pipe time to start rising)
				"rn",{"mr"},
				"rn",{32},
				"jrn",{"md"}, -- jump up to the arch sizable
				"rn",{"then",{{"x",">=",-194624},{"tg"}}},
				"jrn",{4}, -- jump over the gap between the last two arch sizables
				"rn",{"x",">=",-193920-32},
				{"dotimes",3,{
					"jrn",{8},
					"rn",{"tg"}
				}},
				"rn",{"then",{{"x",">=",-193152},{"tg"}}},
				"jrn",{20}, -- collect the 3rd dragon coin (being in the Big state allows collecting the coin without landing on the platform below)
				"rn",{"md"},
				"ln",{2}, -- slow down a bit to avoid hitting the wall
				"rn",{"tg"},
				"jrn",{"md"}, -- release the vine head
				"rn",{"tg"},
				"j",{8},
				"jln",{10},
				"l",{12},
				"r",{"tg"}, -- jump on top of the vine head's block
				"jln",{6},
				"u",{"cl"}, -- grab the vine for a bit of a height boost
				"j",{2}, -- jump up to the platform above
				"jrn",{"md"},
				"rn",{"x",">=",-191872},
				"jrn",{12}, -- jump up to the lowest arch sizable
				"rn",{"tg"},
				"jrn",{"md"}, -- up to the ledge to the right of the sizables
				"rn",{"x",">=",-190560},
				"jrn",{"md"},
				"rn",{"then",{{"ntg"},{"tg"}}},
				"jrn",{12},
				"rn",{"tg"},
				"jrn",{1},
				
				"rn",{math.huge},
			},
		},
	},
	{ -- section 1 (challenge for Dragon Coin 2)
		-- shortcut to section 2
		-- "",{"tg"},
		-- "ju",{100},
		
		"rn",{"x",">=",-179840},
		"jrn",{1}, -- over to arch sizable 1
		"rn",{"x",">=",-179488},
		"jrn",{4}, -- up to 3
		"rn",{"tg"},
		"jln",{1}, -- get the Dragon Coin
		"ln",{"then",{{"ntg"},{"tg"}}},
		"jln",{1}, -- jump back to 2
		"ln",{32},
		"r",{1}, -- slow down a tiny bit to avoid the fourth fireball in the Volcano Lotus's first volley
		"ln",{"tg"},
		"jrn",{4}, -- clear the first volley
		"ln",{"tg"},
		"jln",{3}, -- jump up to 1
		"ln",{"then",{{"tg"},{1}}},
		"ldn",{8}, -- duck under the third fireball in the second volley
		"jln",{4}, -- jump over fireballs 1 and 2
		"ln",{"then",{{"md"},{7}}},
		"rn",{"tg"},
		"ju",{100}, -- go back up the pipe
	},
}