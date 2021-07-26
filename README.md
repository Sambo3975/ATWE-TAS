# ATWE-TAS
A TAS of MrDoubleA's minisode, A Tiny World Adventure.

## Important Info

This TAS simulates game pausing by calling `pauseplus.onPause()` (from one of the episode's libraries). This is because the `onPause()` event cannot be triggered by manipulating the `pause` button. However, this tactic does not allow the game to be paused when pausing is normally disallowed.

## Installation

A video of this run will be made available on my YouTube channel. However, if you want, you can install it and see the TAS for yourself!

Note: In order for this to work, some modifications have to be made to the original code. These will be done using a shell script.

1. The episode's `luna.lua` file will modified to load the TASBot if testing from the editor or playing on save slot #2.
2. All instances of `player.rawKeys` will be replaced with `player.keys`. This makes it so the TASBot can manipulate all inputs, including inputs on the pause menu, but may have some side effects.
3. No other changes will be made, including but not limited to changes that would give the TASBot any gameplay advantages beyond those that it already has by virtue of being a TASBot.

Note that this TAS was created for the initial release of the episode and may not work correctly in later versions.

To use this, do the following (requires git):

1. Navigate to SMBX's episode folder.
2. Right-click, then select Git Bash here.
3. Type the following command: `git clone -f https://github.com/Sambo3975/ATWE-TAS.git ATWE`
4. Type this command: `./ATWE/install.sh`. This will modify the code as described above.
5. Run the episode, selecting save slot #2.
6. Sit back and enjoy the show.

The TASBot itself is available for use [here](https://github.com/Sambo3975/__speedrun).
