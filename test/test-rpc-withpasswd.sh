#!/bin/sh

#IMPORT rpc
#IMPORT log

Info '未建立信任关系的'
RunWithPasswd 192.168.1.231 123456 ls /tmp

Info '已建立信任关系的'
RunWithPasswd 10.211.55.63 123456 ls /tmp

