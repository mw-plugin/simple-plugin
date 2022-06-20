#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


curPath=`pwd`
rootPath=$(dirname "$curPath")

wget -O /tmp/mw_plugin.zip https://github.com/mw-plugin/simple-plugin/archive/refs/heads/main.zip
cd /tmp && unzip /tmp/mw_plugin.zip 


cd /tmp/simple-plugin-main/ && zip -r -q -o simple-plugin.zip  ./

mw simple-plugin.zip $rootPath/
rm -rf /tmp/mw_plugin.zip
rm -rf /tmp/simple-plugin-main


