#!/bin/bash
dir=`pwd`
cd $dir
ls bin && ls down
if [ $? -eq 0 ];then
	echo "./ezctl setup ..."
else
	wget  http://x.x.x.x:8082/download/bin.tar.gz && wget  http://x.x.x.x:8082/download/down.tar.gz
	tar -xf bin.tar.gz && tar -xf down.tar.gz && rm -rf *.tar.gz

fi

