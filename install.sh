#!/bin/bash

game="unreal_gold"
exe="setup_unreal_gold_2.0.0.6.exe"
patch="unreal-linux.tar.bz2"

lgogdownloader --download --game "$game"
mv unreal_gold/"$exe" .
innoextract --extract --exclude-temp "$exe"
mv app/* .
tar vvxf ${patch}

#cleanup
rm -rf unreal_gold app tmp && echo "installation comple! Remember to edit the unreal-linux script accordingly, and place it in your $PATH"
