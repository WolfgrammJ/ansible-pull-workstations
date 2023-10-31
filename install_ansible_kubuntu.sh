sudo apt install pipx
pipx install --include-deps ansible
pipx inject --include-apps ansible argcomplete
pipx ensurepath
