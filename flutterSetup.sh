#!/bin/sh

mkdir /Users/$USER/goinfre/Android /Users/$USER/goinfre/.android /Users/$USER/goinfre/.gradle
curl https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_2.8.1-stable.zip -O -J -L
unzip -q /Users/$USER/goinfre/flutter_macos_2.8.1-stable.zip
rm /Users/$USER/goinfre/flutter_macos_2.8.1-stable.zip

echo $PATH | grep -q  "/Users/$USER/goinfre/flutter/bin"
if [ $? -eq 1 ]; then
echo 'export PATH="$PATH:/Users/$USER/goinfre/flutter/bin"' >> /Users/$USER/.zshrc
fi

source ~/.zshrc
yes | flutter doctor --android-licenses

echo $PATH | grep -q  "/Users/$USER/Library/Android/sdk/emulator"
if [ $? -eq 1 ]; then
echo 'export PATH="$PATH:/Users/$USER/Library/Android/sdk/emulator"' >> /Users/$USER/.zshrc
fi

echo $PATH | grep -q  "/Users/$USER/Library/Android/sdk/tools"
if [ $? -eq 1 ]; then
echo 'export PATH="$PATH:/Users/$USER/Library/Android/sdk/tools"' >> /Users/$USER/.zshrc
fi

echo $PATH | grep -q  "/Users/$USER/Library/Android/sdk/tools/bin"
if [ $? -eq 1 ]; then
echo 'export PATH="$PATH:/Users/$USER/Library/Android/sdk/tools/bin"' >> /Users/$USER/.zshrc
fi

echo $PATH | grep -q  "/Users/$USER/Library/Android/sdk/platform-tools"
if [ $? -eq 1 ]; then
echo 'export PATH="$PATH:/Users/$USER/Library/Android/sdk/platform-tools"' >> /Users/$USER/.zshrc
fi
source ~/.zshrc