# ATWE-TAS
A TAS of MrDoubleA's minisode, A Tiny World Adventure.

You can install this in the ATWE episode folder and try for yourself. However, be warned: this modifies some of the episode code in a couple ways.

1. It adds 3 lines of code to the episode's global luna.lua that will load the TASBot if testing a level from the editor or playing on save slot #2.
2. It replaces all instances of `player.rawKeys` in the code with `player.keys`. This makes it so all inputs can be manipulated by the TASBot, but may have some side effects.

In addition to this, the modified scripts are from the initial release of the episode. MrDoubleA may have changed them since then. You should create a backup of the episode folder before installation of this TAS.

To use this, do the following:

1. Navigate to SMBX's episode folder in the command line.
2. Type the following command: `git clone -f https://github.com/Sambo3975/ATWE-TAS.git ATWE`
3. Run the episode, selecting save slot #2.
4. Sit back and enjoy the show.

The TASBot itself is available for use [here](https://github.com/Sambo3975/__speedrun).
