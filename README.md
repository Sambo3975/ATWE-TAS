# ATWE-TAS
A TAS of MrDoubleA's minisode, A Tiny World Adventure.

## Important Info

This repository does not contain any portion of the ATWE episode or its scripts, as I do not have permission from MrDoubleA to distribute his work. You will need to download ATWE from [this page](https://www.supermariobrosx.org/forums/viewtopic.php?f=36&t=27087), if you don't already have it, before you can install this TAS. If you have not played it, it's a pretty solid episode that I would recommend playing before you watch my TAS. When you install the TAS, it will create a modified copy of the ATWE episode folder.

This TAS simulates game pausing by calling `pauseplus.onPause()` (from one of the episode's libraries). This is because the `onPause()` event cannot be triggered by manipulating the `pause` button. However, this tactic does not allow the game to be paused when pausing is normally disallowed.

## Installation

A video of this run will be made available on my YouTube channel. However, if you want, you can install it and see the TAS for yourself!

Note: In order for this to work, some modifications have to be made to the original code. These will be done using a shell script.

1. The episode's `luna.lua` file will modified to load the TASBot.
2. All instances of `player.rawKeys` in the episode's scripts will be replaced with `player.keys`. This makes it so the TASBot can manipulate all inputs, including inputs on the pause menu, but may have some side effects during normal play.
3. No other changes will be made, including but not limited to changes that would give the TASBot any gameplay advantages beyond those that it already has by virtue of being a TASBot.

Note that this TAS was created for the initial release of the episode and may not work correctly in later versions.

To use this, do the following (requires git):

1. Download and install SMBX2 if you don't already have it. (You can get it [here](http://codehaus.moe/downloads.php?).)
2. Downlaod and install ATWE in the SMBX2 worlds folder if you don't already have it. (You can get it [here](https://www.supermariobrosx.org/forums/viewtopic.php?f=36&t=27087).)
3. Open Git Bash from the SMBX2 worlds folder (this program should have come packaged with Git).
4. Type the following command: `git clone --recurse-submodules https://github.com/Sambo3975/ATWE-TAS.git ATWE-TAS`
5. Type this command: `./ATWE-TAS/install.sh`. This will copy the contents of the ATWE folder (minus save files) to the ATWE-TAS folder, then modify its scripts as described above. This expects that ATWE will be located in a folder named `ATWE` in the `worlds` directory.
6. Run the episode 'ATWE-TAS' from the launcher, and the TAS will start automatically.

The TASBot itself is available for use [here](https://github.com/Sambo3975/__speedrun).
