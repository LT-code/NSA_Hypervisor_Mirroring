# execute
ansible-galaxy collection install gluster.gluster 

ansible-playbook -i hosts Playbook.hypervisor.yml -c paramiko -vv 
