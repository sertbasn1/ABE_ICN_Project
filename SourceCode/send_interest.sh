#!/bin/bash

interest=$1
#Ex: "/ndn/test/mycontent"
name=$2
#Ex: samet


IN=$interest
mails=$(echo $IN | tr "/" "\n")
set -- $mails
path=$3

p1=received
p2=.txt.cpabe
cachepath=$p1$path$p2


$CCNL_HOME/bin/ccn-lite-fetch -s ndn2013 -u 127.0.0.1/9996 $interest >$cachepath



echo Requested object is found on cache and saved into $cachepath file
echo --- --- --- ---

b='_priv_key'
client=$name$b

echo User $name is trying to decrypt the object using $client

cpabe-dec pub_key $client $cachepath


p1=received
p2=.txt
cachepath2=$p1$path$p2


open -a TextEdit $cachepath2
