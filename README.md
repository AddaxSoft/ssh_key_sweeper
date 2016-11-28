# ssh_key_sweeper
a tiny tool to use a dsa/rsa key on multiple hosts for the purpose of gaining access

# scenario
So you've gained an access to the low hanging frute host in the network; found /root/.ssh/id_rsa rsa private key but you don't know where to use it.
This tool can use that key on mutiple hosts and gain you a shell in one of them.

# requirments 
- don't forget to `chmod 700 id_rsa`
- key has to be named id_rsa and in the same folder
- you can generate the sshservers.txt by nmap:
    nmap -sS -p 22 $TARGETS -Pn --open -oG scan.txt
    cat scan.txt | cut -d " " -f2 | uniq | grep -iv nmap > sshservers.txt
