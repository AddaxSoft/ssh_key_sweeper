#! /bin/bash

for ip in `cat ./sshservers.txt`
do
	echo $ip
	ssh -o PreferredAuthentications=publickey -i id_rsa root@$ip
done
