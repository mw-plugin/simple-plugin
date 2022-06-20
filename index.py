# coding:utf-8

import sys
import io
import os
import time
import re
import string
import subprocess


def getPluginName():
    return 'simple-plugin'


def status():
    # start ｜ stop
    return 'start'


def start():
    return 'ok'


def stop():
    return 'ok'


def restart():
    return 'ok'


def reload():
    return 'ok'


def initdStatus():
    return 'ok'


def initdInstall():
    return 'ok'


def initdUinstall():
    return 'ok'

if __name__ == "__main__":
    func = sys.argv[1]
    if func == 'status':
        print(status())
    elif func == 'start':
        print(start())
    elif func == 'stop':
        print(stop())
    elif func == 'restart':
        print(restart())
    elif func == 'reload':
        print(reload())
    elif func == 'initd_status':
        print(initdStatus())
    elif func == 'initd_install':
        print(initdInstall())
    elif func == 'initd_uninstall':
        print(initdUinstall())
    else:
        print('error')
