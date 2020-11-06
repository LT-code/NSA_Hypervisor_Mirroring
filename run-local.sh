# execute
ansible-galaxy collection install gluster.gluster 

ansible-playbook -i hosts.local Playbook.local_hypervisor.yml -c paramiko -vv 
