#/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -n "$ZOOKEEPER_ID_FROM_HOST" ]; then
   ID=$(hostname | sed 's/[^0-9]*//g')
   mkdir -p $ZOOKEEPER_ID_FROM_HOST
	echo $ID > $ZOOKEEPER_ID_FROM_HOST/myid
fi

call-next-plugin "$@"
