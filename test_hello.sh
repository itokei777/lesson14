#!/bin/bash

ERROR_EXIT(){
	echo "$1" >$2
	rm -f /tmp/$$-*
	exit 1
}


./hello.sh > /tmp/$$-result

echo "hello" > /tmp/$$-ans
echo "world" >> /tmp/$$-ans


diff /tmp/$$-result /tmp/$$-ans || ERROR EXIT  "1個目のテスト"

echo "テストクリア"
rm /tmp/$$-*

exit 0
