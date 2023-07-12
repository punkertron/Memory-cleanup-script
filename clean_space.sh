#!/bin/bash

echo -e "\nBefore"
df -h ${HOME} | tail -n 1 | awk '{print $4}'
echo ""

rm -rf ${HOME}/Library/Containers/com.apple.Safari/Data/Library/Caches/*
rm -rf ${HOME}/Library/Caches/*
rm -rf ${HOME}/Library/Application\ Support/Code/CachedData/*
rm -rf ${HOME}/Library/Application\ Support/Code/Cache/*
rm -rf ${HOME}/Library/Application\ Support/Code/CachedProfilesData/*
rm -rf ${HOME}/Library/Application\ Support/Postman/Cache/*
rm -rf ${HOME}/Library/Application\ Support/Postman/Partitions/postman_shell/GPUCache/*
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/GrShaderCache/*
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/ShaderCache/*
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/Default/*
rm -rf ${HOME}/Library/Containers/com.apple.AppStore/Data/Library/Caches/*
#rm -rf ${HOME}/Library/Safari/Favicon\ Cache/*
rm -rf ${HOME}/Library/Application\ Support/Postman/GPUCache/*
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/Default/Storage/ext/nmmhkkegccagdldgiimedpiccmgmieda/def/GPUCache/*
rm -rf ${HOME}/Library/Application\ Support/Code/CachedExtensionVSIXs/*

echo "After cleaning"
df -h ${HOME} | tail -n 1 | awk '{print $4}'
echo ""
