open -a Terminal "`pwd`"

#Start Relay B
$CCNL_HOME/bin/ccn-lite-relay -v trace -s ndn2013 -u 9995 -x /tmp/mgmt-relay-b.sock \
-d $CCNL_HOME/test/ndntlv
