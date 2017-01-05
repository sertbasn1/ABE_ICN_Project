# ABE_ICN_Project

Before use the scripts you should install followings


CCN-lite for Unix
https://github.com/cn-uofbasel/ccn-lite.git]

•	Prerequisites
Ubuntu: sudo apt-get install libssl-dev
OS X: brew install openssl

    git clone https://github.com/cn-uofbasel/ccn-lite
    export CCNL_HOME="`pwd`/ccn-lite"
    export PATH=$PATH:"$CCNL_HOME/bin"
    cd $CCNL_HOME/src
    make clean all


Ciphertext-Policy Attribute-Based Encryption
[http://hms.isi.jhu.edu/acsc/cpabe/index.html]

Downloand cpabe-0.11.tar.gz, libbswabe-0.9.tar.gz packages 
Untar,  compile, and install as following

    ./configure
    make
    make install
