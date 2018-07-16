#!/bin/sh

#IMPORT progress
#IMPORT rpc

ProgressGroup "第一组"    "一个空格 两个空格  结束"

Progress 1-1
Step echo good1
Step echo good2
Done "过了"

Progress 1-2 有多个  段落怎么办
Step echo good3
Step echo good4
Done

DoneGroup "搞定"

ProgressGroup "第二组"

Progress "2-1"
Step echo good5
Step echo good6
Done

Progress "2-2"
Step echo good7
Step echo good8
Done

DoneGroup

ProgressGroup "第三组"

ProgressGroup "3-1"
Step echo good9
Step echo good10

Progress "3-1-1"
Step echo good11
Step echo good12
Done

Progress "3-1-2"
Step echo good13
Step echo good14
Done

DoneGroup

Progress "3-2"
Step echo good15
Step RunLoc ls /aaa
Done

DoneGroup
