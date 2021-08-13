# INSTRUCTIONS

This is intended to be a simple guide to help people get Unreal Gold working natively on linux.
Here, you will find the links to download the necessary files.

This guide assumes that you are installing Unreal Gold specifically, and you know how to acquire the game data.
Otherwise, the instructions are largely the same regardless of the version you chose to install. This guide also
assumes that you are a relatively new user and are unfamiliar with certain concepts that may be common knowledge among more experienced users, such as how to use Wine and edit shell scripts. As such, I will try to include helpful links
wherever necessary.

# CORE FILES

[1] [Unreal Gold Patch 277i](https://oldunreal.com/patch/unreal/oldunreal/UnrealGoldPatch227i.7z)

[2] [Compatibility Libraries](https://github.com/vide0hanz/unreal-gold/raw/master/NEW_unreal_libs_i386.zip)

Due to licensing restrictions, the OldUnreal patch does not contain a Linux installation and can only be packaged as 
an EXE file intended to be run on Windows systems, so we will be using WINE in order to extract the data. Refer to
the [Wine User's Guide](https://wiki.winehq.org/Wine_User%27s_Guide) for detailed information.

- Step 1: Install Wine; It should be available in your distribution's repositories. 

- Step 2: Extract the UnrealGoldPatch277i.7z file

- Step 3: Open your terminal and run the following:

`wine UnrealGoldPatch277i.exe`

- Step 4: Set the Destination Folder for the installation path, by default, "C:\UnrealGold" should be visible. Since
we are using Wine, this path most likely does not exist so you must manually type it in as follows:

`Z:\path\to\installation`

  Note the "Z:\" -- This can essentially be thought of as the "drive" which the installation will use in order to
  install the .exe to a directory of our choice on our Linux file system, ie "Z:\\~\Games\Unreal Gold" -- also note the
  backslashes; Windows uses backslashes for filepaths as opposed to forward slashes. 

- Step 5: Be sure to check the box for "Linux native files", then install as usual. Once the installation has finished, you should now have a directory which contains the linux binaries in System.

- Step 6: Extract the [Compatibility Libraries](https://github.com/vide0hanz/unreal-gold/raw/master/NEW_unreal_libs_i386.zip) at the root of your /Unreal Gold directory; this should place a new folder called "libs" alongside everything
else.

- Step 7: Place the `unreal-gold.sh` script in your $PATH and make any relevant edits, such as your $GAMEDIR and 
remember to make it executable: `chmod +x unreal-gold.sh`

- Step 8: Run the script, and play the game! If for some reason the game does not launch, try copying the included UnrealLinux.ini folder into your `Unreal Gold/System` directory.

 



