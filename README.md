# Dependencies

1. [LGOGDownloader](https://github.com/Sude-/lgogdownloader)
	
	Currently, the install script will grab the installation from GOG, provided you own the game on that platform and have logged into LGOGDownloader. Refer to manpage for LGOGDownloader for more information. 

	If you already have a copy of the Unreal installation EXE, be sure to place it in the same directory of the install script and edit accordingly.

2. [innoextract](https://github.com/dscharrer/InnoExtract)
	
	This is used to extract the Unreal setup EXE to the current working directory. Should work on all GOG installs, and may work on other EXE files as well (untested)

# Included Files

1. The unreal-linux.tar.bz2 is an archive of all of the patched files that are included in the OldUnreal 227i EXE. It was necessary to distribute the patch this way due to license restrictions imposed by Epic which did not grant OldUnreal permission to distribute a Linux installer. All I have done is merely extracted the patched files and Linux binaries, libs, etc. and archived them here for ease of use. Additionally, I have included a working .ini file as well as a slightly modified version of LibSDL1.2 which should, at the very least, not screw with your desktop resolution and automatically detect your preferred monitor for the game to run on if using a multihead seutp. 

2. The unreal-gold.sh is a helper script to launch the game, intended to be placed in your $PATH for ease of use. 

# Instructions

Provided all of the prerequisites have been met as outlined above, simply clone this repo and run the `install.sh` script. This will automatically download the game from GOG, extract the contents of the EXE, apply the patch, and clean up any unnecessary directories. After that, you will have to edit the `unreal-gold.sh` helper script accordingly. You can run the `unreal-gold.sh` script now to play the game, or move it to your $PATH. Enjoy!



