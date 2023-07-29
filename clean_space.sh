#!/bin/bash

echo -e "\n------------------------\nAvailable memory:\n\nBefore"
df -h ${HOME} | tail -n 1 | awk '{print $4}'
echo ""

rm -rf ${HOME}/Library/Containers/com.apple.Safari/Data/Library/Caches/*
rm -rf ${HOME}/Library/Caches/*
rm -rf ${HOME}/Library/Application\ Support/Code/CachedData/*
rm -rf ${HOME}/Library/Application\ Support/Code/Cache/*
rm -rf ${HOME}/Library/Application\ Support/Code/CachedProfilesData/*
rm -rf ${HOME}/Library/Application\ Support/Code/logs
rm -rf ${HOME}/Library/Application\ Support/Postman/Cache/*
rm -rf ${HOME}/Library/Application\ Support/Postman/Partitions/postman_shell/GPUCache/*
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/GrShaderCache/*
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/ShaderCache/*
#rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/Default/* # this removes extensions
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/*
rm -rf ${HOME}/Library/Containers/com.apple.AppStore/Data/Library/Caches/*
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/Default/optimization_guide_prediction_model_downloads/*
rm -rf ${HOME}/Library/Safari/Favicon\ Cache/*
rm -rf ${HOME}/Library/Application\ Support/Postman/GPUCache/*
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/Default/Storage/*
rm -rf ${HOME}/Library/Application\ Support/Code/CachedExtensionVSIXs/*
rm -rf ${HOME}/Library/Application\ Support/Code/User/workspaceStorage/*
rm -rf ${HOME}/.platformio/.cache
rm -rf ${HOME}/Library/Application\ Support/Sublime\ Text\ 3/Cache
rm -rf ${HOME}/Library/Metadata

echo "After cleaning"
df -h ${HOME} | tail -n 1 | awk '{print $4}'
echo -e "------------------------\n"
