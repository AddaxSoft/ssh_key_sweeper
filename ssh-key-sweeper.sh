#! /bin/bash

for ip in `cat ./sshservers.txt`
do
	echo $ip
	ssh -o PreferredAuthentications=publickey -o StrictHostKeyChecking=no -i id_rsa root@$ip
done
