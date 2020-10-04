# nextcloud_server

Creates a nextcloud docker-based instance in the Hetzner Cloud with Terraform and Ansible.

Create a terraform environment first, either locally with a tfvars file, or in Terraform Cloud.
After the virtual machine is created, put th server IP address into an inventory file and start from within ansible directory

    ansible-playbook -i <inventory-file> ./playbooks/nextcloud_server.yml
    
    
For details, see https://www.selfscrum.org/en/article/2020_10_03_deploying-nextcloud/
