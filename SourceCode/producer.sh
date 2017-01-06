#!/bin/bash

opt=$1
file=$2
naming=$3 #/ndn/test/cmp
#policy=$4


if [ $opt = 1 ]; then
#üretsin
cpabe-setup
echo public and master keys are generated
fi


cpabe-enc pub_key $file '((MemofPrA and engineer) or (boss))'

#cpabe-enc pub_key $file '((MemofPrB and engineer) or (boss))'



echo $file is encrypted using specified access policy..
echo --- --- --- ---


IN=$naming
mails=$(echo $IN | tr "/" "\n")
set -- $mails
path=$3

p1=$CCNL_HOME/test/ndntlv/
p2=.txt.cpabe
cachepath=$p1$path$p2



encryptedfile="$file.cpabe"
$CCNL_HOME/bin/ccn-lite-mkC -s ndn2013 -i $encryptedfile $naming  > $cachepath

#>>for large file transfers
#$CCNL_HOME/bin/ccn-lite-produce -s ndn2013 -i $encryptedfile $naming  > $cachepath
echo Encrypted file is pushed to ICN environment ..
echo --- --- --- ---



