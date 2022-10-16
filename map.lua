local lu = require("__runs/__localutils")
local utils = require("__speedrun/utils")
local d = utils.dialog

local PLAYER_STATE = utils.SMWMAP_PLAYER_STATE

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
	{
		-- navigate back to sky
		"",{{"smwMapY","<",-200320},{"smwMapState","==",PLAYER_STATE.NORMAL}},
		"dl",{1},
		"",{{1},{"smwMapState","==",PLAYER_STATE.NORMAL}},
		"u",{32},
		"",{{1},{"smwMapState","==",PLAYER_STATE.NORMAL}},
		"j",{1},
		-- select checkpoint 1
		"d",{1},
		"j",{1},
	}
}

GameData.speedrunProgress = GameData.speedrunProgress + 1
-- GameData.speedrunProgress = 1

local currentInputs = inputs[GameData.speedrunProgress] or {}

-- Misc.dialog(currentInputs)
currentInputs.global = true
return currentInputs
