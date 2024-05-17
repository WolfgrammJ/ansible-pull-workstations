sudo apt update
sudo apt install software-properties-common -y
#sudo apt-add-repository ppa:ansible/ansible
#sudo apt update
sudo apt install ansible -y
sudo apt install python3-argcomplete -y
sudo ansible-galaxy collection install community.general

ansible-pull -U https://github.com/WolfgrammJ/ansible-pull-workstation.git workstation.yml --checkout main
