#!/usr/bin/bash

#echo '' > commitID.txt
#echo '' > commitID2.txt
#echo '' > commitID3.txt
git log > commitID.txt
grep -w 'commit' commitID.txt > commitID2.txt
sed -e 's/commit//g' commitID2.txt > commitID3.txt
sed '1,5!d' commitID3.txt 
rm commitID.txt
rm commitID2.txt
rm commitID3.txt