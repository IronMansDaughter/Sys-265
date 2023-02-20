#secure-ssh.sh
#author Janelle Fisher aka IronMansDaughter
#creates a new ssh user using $1 parameter
#adds a public key from the local repo pr curled from the remote repo
#removes all ability to ssh in (you do not need to disable root ssh on ubuntu bc it is already like that)
#!/bin/bash
echo "Hello, what would you like your ussername to be?"
read first_name

USER=$first_name

sudo useradd -m -d /home/${USER} -s /bin/bash ${USER};
sudo mkdir /home/${USER}/.ssh;
sudo cp ~/Sys-265/SYS265/linux/public-keys/id_rsa.pub /home/${USER}/.ssh/authorized_keys;
sudo chmod 700 /home/${USER}/.ssh;
sudo chmod 600 /home/${USER}/.ssh/authorized_keys;
sudo chown -R ${USER}:${USER} /home/${USER}/.ssh;
