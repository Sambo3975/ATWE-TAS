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
}

GameData.speedrunProgress = GameData.speedrunProgress + 1
-- GameData.speedrunProgress = 1

local currentInputs = inputs[GameData.speedrunProgress] or {}
-- Misc.dialog(currentInputs)
currentInputs.global = true
return currentInputs
