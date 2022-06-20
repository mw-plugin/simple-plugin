#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

wget -O /tmp/mw_plugin.zip https://codeload.github.com/mw-plugin/simple-plugin/zip/master
cd /tmp && unzip /tmp/mw_plugin.zip

cp -rf  /tmp/mw_plugin-master/* /www/server/mdserver-web/plugins/simple-plugin

rm -rf /tmp/mw_plugin.zip
rm -rf /tmp/mdserver-web-master


