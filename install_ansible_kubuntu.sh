sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
sudo apt install python3-argcomplete
sudo activate-global-python-argcomplete3
sudo ansible galaxy collection install

sudo ansible-pull -U https://github.com/WolfgrammJ/ansible-pull.git ubuntu.yml
