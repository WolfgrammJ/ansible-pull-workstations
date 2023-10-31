sudo apt install pipx
pipx install --include-deps ansible
pipx inject --include-apps ansible argcomplete
pipx ensurepath
sudo ansible-pull -U https://github.com/WolfgrammJ/ansible-pull.git ubuntu.yml
