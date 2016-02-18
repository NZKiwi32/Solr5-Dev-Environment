# ansible-vagrant-Solr4

Note: Using Solr4 due to install issues with 5 which are currently unsolved.

Automated install of Solr4 onto Ubuntu using Vagrant and Ansible

## Pre-requisites 
Vagrant + Ubuntu box: hashicorp/precise64

## How it works
1. Builds a VM using Vagrant 
2. Then pushes vagrant_share folder sync into the /vagrant
3. Runs the provision-ubuntu.sh script to install ansible 2.0 and dependencies
4. Executes the playbook (in ansible_connection=local mode*) to provision solr and dependencies.
5. Runs Solr4

\* used because ansible on windows is a pain so removes this issue.

## How to use it
After installing vagrant, all you need is `vagrant up`
