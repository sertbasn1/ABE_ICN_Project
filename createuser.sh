#!/bin/bash

name=$1
# Ex: nurefsan

s=$@
attributes=${s#* }
# Ex: sysadmin it_department 'office = 1431'


b='_priv_key'
client=$name$b


echo User private key is generating based on specified attributes..
echo --- --- ---


cpabe-keygen -o $client pub_key master_key \
$attributes

echo User:$name
x="$client is generated"
echo    $x
echo --- --- ---

y="Attributes:$attributes"
echo $y
echo --- --- ---


