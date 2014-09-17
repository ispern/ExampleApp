#!/usr/bin/sh
if [ -d ~/bin/Sencha ]; then
    exit;
fi;
unzip SenchaCmd-5.0.1.231-linux-x64.run.zip && chmod +x SenchaCmd-5.0.1.231-linux-x64.run
./SenchaCmdInstall.sh