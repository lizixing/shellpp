#!/bin/sh

#IMPORT rpc
#IMPORT log

RunLoc echo good
Run root@10.211.55.63 ls /root

echo good > xxx
rm -rf /tmp/xxx

CopyLoc xxx /tmp/xxx
Copy root@10.211.55.63 /tmp/xxx
RunLoc rm -rf xxx
