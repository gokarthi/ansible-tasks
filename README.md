DevOps freshers test
From 
Name:sesh sankar oduri
Email:odurishankar@gmail.com
TASKS-----
1.Created a AWS free tier account 
2.Created a vpc called myvpc
3.created a subnet
4.attached subnet to route table along with Internet gate way
5.created three ec2 instances with AMI Ubuntu Server 18.04 LTS and taken t2.micro instance type  and configured security groups open to port 22(ssh),given storagecapacity of 8GB.
6.Named three instances as MSR-server MSR-test-intsance-1 and MSR-test-instance-2
7.BY logging into MSR-server with putty with pem key and then switched to root user here I made it as Ansible server machine by installing  
apt-get install python-yaml python-jinja2 python-paramiko python-crypto python-keyczar ansible
8.On MSR-test-instance-1 I made it has client by installing
apt-get install -y python-crypto python-keyczar
9.Repeated the same steps on MSR-test-instance-2
10.created the keypair on the server machine by ssh-keygen-t rsa
11.once the key is generated copied the public key(id_rsa.pub) and put it in the authorized_keys for the both the client machines and restarted the ssh.
12.Onthe Server machine 
   create the list of client machines you wish to access via this server
   vim /etc/ansible/hosts
   [servers]
   54.196.124.125
   52.55.37.236
   Run the command: ansible -m ping all
  if we get the response inthe green color like serves ip address with ping:pong
  that the server is communicating without any problem
13.Now create a file with name tasks.sh
   the file contains the packages to be installed like git,docker.nvm,node,docker-compose,openssl
14.Now created a file with name playbook.yml that contains the information to how to install the package and where to install.
the playbook.yml and tasks.sh files are  attached please go through them
15.Ansible-playbook command can be executed to run the playbook.yml file as below
ansible-playbook -k -K playbook.yml
the -k -K switches allow us to be able to use ssh key and passwordless sudo.
Every playbook configuration begins with triple dash (---)

