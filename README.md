# ansible-vagrant-Solr5

Automated install of Solr5 onto Ubuntu using Vagrant and Ansible

## Pre-requisites 
Vagrant + Ubuntu box: hashicorp/precise64 (automatically obtained)

## How to use it
1. Install vagrant
2. Checkout repo
3. cd into vagrant folder
4. run `vagrant up`
5. Wait until playbook finishes: Play Recap
6. Access solr via localhost:8983/solr

## Details
Port forwarding from host to guest of port 8983 for default solr port.

## How it works
1. Builds a VM using Vagrant 
2. Then pushes vagrant_share folder sync into the /vagrant
3. Runs the provision-ubuntu.sh script to install ansible 2.0 and dependencies
4. Executes the playbook (in ansible_connection=local mode*) to provision solr and dependencies.
5. Runs Solr

\* used because ansible on windows is a pain so removes this issue.


