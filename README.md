# ansible-mac-setup
Setting up my Macbooks (Intel & M1) with Ansible

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
ansible-playbook install_docker.yaml --ask-become-pass
ansible-playbook setup_github.yaml --ask-become-pass
ansible-playbook setup_iterm2.yaml --ask-become-pass
ansible-playbook setup_vscode.yaml --ask-become-pass
```

### Apps not compatible with M1 Mac (as of 2020/06/03)
- chrome-remote-desktop-host (requires rosetta)
- keybase (requires rosetta)
- virtualbox