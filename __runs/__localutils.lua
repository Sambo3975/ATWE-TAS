-- Specific utility functions for this episode (ATWE)
-- useless outside the episode

local pauseplus = require("pauseplus")

local lu = {}

-- simulate a game pause (this episode uses onPause, which cannot be caused by programmatically manipulating the pause button
-- I checked the episode code, and this shouldn't be able to pause the game when a human cannot do so
function lu.pause()
	-- pass an empty table as the event object. This table will have it's "cancelled" field set, which will, of course, do nothing
	pauseplus.onPause({},player)
	return -1
end

-- return true when the player can input to the pause menu
function lu.canInputToMenu()
	return not pauseplus.inResizingTransition and pauseplus.canControlMenu
end

return lu