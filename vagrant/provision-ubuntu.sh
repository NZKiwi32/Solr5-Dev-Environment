# The purpose of this script is to install everything before we have ansible to configure the box.
# This should be items like, update centos and then install ansible and run the playbook.yml file.
echo "=== Provisioning the Pre-Ansible Setup. ==="

echo "Running System Update."

sudo apt-get -y update
sudo apt-get install -y git
sudo apt-get install -y source
sudo apt-get install -y python-setuptools

sudo easy_install pip
sudo easy_install Jinja2
sudo pip install pyyaml

git clone git://github.com/ansible/ansible.git --recursive
cd ./ansible

echo "Installing ansible."
source ./hacking/env-setup


echo "Ansible version installed as:"
ansible --version

echo "=== Moving into ansible scripts now ==="
ansible-playbook /vagrant/ansible/main.yml -i /vagrant/ansible/localhost -vvv