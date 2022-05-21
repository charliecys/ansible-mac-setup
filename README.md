# ansible-mac-setup
Setting up my Macbook (Intel) with Ansible

## Install prerequsite
```
# installs brew
# uses brew to install ansible
# ansible-galaxy to install requirement.yaml

cd prereqs
./install_prereq.sh
```

## Install applications via ansible
```
cd ..
ansible-playbook install_apps.yaml --ask-become-pass
ansible-playbook setup_github.yaml --ask-become-pass
ansible-playbook setup_iterm2.yaml --ask-become-pass
ansible-playbook setup_vscode.yaml --ask-become-pass
```