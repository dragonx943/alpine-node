#!/bin/sh
## Fake setup, LOL !!!
rm -rf node-v18-linux-*.tar.gz
clear
echo "W: Download Nodejs v18, this may take a while base on your internet speed."
case `uname -m` in
i386)
        archurl="x86" ;;
i686)
        archurl="x86" ;;
x86)
        archurl="x86" ;;
aarch64)
        archurl="arm64" ;;
arm)
        archurl="arm" ;;
armv7)
        archurl="arm" ;;
armhf)
        archurl="arm" ;;
armv8)
        archurl="arm64" ;;
armv8l)
        archurl="arm64" ;;
amd64)
        archurl="x64" ;;
x86_64)
        archurl="x64" ;;
esac
curl -fLO https://github.com/dragonx943/alpine-node/releases/download/v18/node-v18-linux-${archurl}.tar.gz
echo "W: Installing nodejs & npm..."
tar -xzf node-v18-linux-${archurl}.tar.gz -C /usr --strip-components=1 --no-same-owner
echo "W: Cleaning up..."
rm -rf node-v18-linux-*.tar.gz
break
