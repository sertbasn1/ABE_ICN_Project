#Add forwarding rules


FACEID=`$CCNL_HOME/bin/ccn-lite-ctrl -x /tmp/mgmt-relay-a.sock newUDPface any 127.0.0.1 9995 \
| $CCNL_HOME/bin/ccn-lite-ccnb2xml | grep FACEID | sed -e 's/^[^0-9]*\([0-9]\+\).*/\1/'`


$CCNL_HOME/bin/ccn-lite-ctrl -x /tmp/mgmt-relay-a.sock prefixreg /ndn 2 ndn2013 \
| $CCNL_HOME/bin/ccn-lite-ccnb2xml

#Other version of the command if the above one does not work!
#$CCNL_HOME/bin/ccn-lite-ctrl -x /tmp/mgmt-relay-a.sock prefixreg /ndn $FACEID ndn2013 \
#| $CCNL_HOME/bin/ccn-lite-ccnb2xml


