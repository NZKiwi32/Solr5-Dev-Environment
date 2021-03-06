# Local Solr5 Development Environment 

Automated install of Solr5 onto Ubuntu using Vagrant virtual machine management and Ansible Playbooks for provisioning.

## Pre-requisites 
* [Vagrant](https://www.vagrantup.com/)

## Use cases / Target Audience
This machine is useful to experiment with solr5 in a local development environment for prototyping or exploring if solr works for you. Access via: [http://localhost:8983/solr/#/]([http://localhost:8983/solr/#/])

Disclaimer: It's not intended to be production ready

## How to use it
1. Install vagrant
2. Checkout repo
3. cd into vagrant folder
4. run [`vagrant up`](https://www.vagrantup.com/docs/cli/up.html)
5. Wait until playbook finishes: Play Recap
6. Access solr via localhost:8983/solr

## Installed Software
Java7
Solr5.X

## How it works
1. Builds a Ubuntu virtual machine using image hashicorp/precise64 using Vagrant 
2. Then pushes vagrant_share folder sync into the /vagrant
3. Runs the provision-ubuntu.sh script to install ansible 2.0 and dependencies
4. Executes the playbook (in ansible_connection=local mode) to provision solr and dependencies.
5. Runs Solr
6. Creates Core using configured name

## Environment Setup Time
First provision (`vagrant up`) takes ~5-10 minutes*.
Re-Provisioning (`vagrant provision`) back to clear state is ~1 minute.
* Download times vary dependending on your connection
