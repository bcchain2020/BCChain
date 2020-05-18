#!/bin/bash
#
# bcio-tn_bounce is used to restart a node that is acting badly or is down.
# usage: bcio-tn_bounce.sh [arglist]
# arglist will be passed to the node's command line. First with no modifiers
# then with --hard-replay-blockchain and then a third time with --delete-all-blocks
#
# the data directory and log file are set by this script. Do not pass them on
# the command line.
#
# in most cases, simply running ./bcio-tn_bounce.sh is sufficient.
#

pushd $BCIO_HOME

if [ ! -f programs/nodbc/nodbc ]; then
    echo unable to locate binary for nodbc
    exit 1
fi

config_base=etc/bcio/node_
if [ -z "$BCIO_NODE" ]; then
    DD=`ls -d ${config_base}[012]?`
    ddcount=`echo $DD | wc -w`
    if [ $ddcount -ne 1 ]; then
        echo $HOSTNAME has $ddcount config directories, bounce not possible. Set environment variable
        echo BCIO_NODE to the 2-digit node id number to specify which node to bounce. For example:
        echo BCIO_NODE=06 $0 \<options\>
        cd -
        exit 1
    fi
    OFS=$((${#DD}-2))
    export BCIO_NODE=${DD:$OFS}
else
    DD=${config_base}$BCIO_NODE
    if [ ! \( -d $DD \) ]; then
        echo no directory named $PWD/$DD
        cd -
        exit 1
    fi
fi

bash $BCIO_HOME/scripts/bcio-tn_down.sh
bash $BCIO_HOME/scripts/bcio-tn_up.sh "$*"
