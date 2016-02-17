# The purpose of this script is to install everything before we have ansible to configure the box.
# This should be items like, update centos and then install ansible and run the playbook.yml file.
echo "=== Provisioning the Pre-Ansible Setup. ==="

echo "Running Yum Update."
sudo yum -y update

# echo "Installing ansible."
sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
sudo yum -y install ansible

echo "Ansible version installed as:"
ansible --version

echo "=== Moving into ansible scripts now ==="
ansible-playbook /vagrant/ansible/main.yml -i /vagrant/ansible/localhost -vvv