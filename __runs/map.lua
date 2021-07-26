local pauseplus = require("pauseplus")
local lu = require("__runs/localutils")

GameData.speedrunProgress = GameData.speedrunProgress or 0

local inputs = {
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
}

-- GameData.speedrunProgress = GameData.speedrunProgress + 1
GameData.speedrunProgress = 1

local currentInputs = inputs[GameData.speedrunProgress] or {}
currentInputs.global = true
return currentInputs
