#!/bin/bash

ANSIBLE_VERSION=5.8.0


function install_brew {
  if [ -z $(which ansible) ]
    then
    echo "============================="
    echo "====== Installing Brew ======"
    echo "============================="

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Brew already installed"
  fi
}
install_brew

function install_ansible {
  if [ -z $(which ansible) ]
    then
    echo "================================"
    echo "====== Installing Ansible ======"
    echo "================================"

    brew install ansible@${ANSIBLE_VERSION}
  else
    echo "Ansible already installed"
  fi
}
install_ansible

ansible-galaxy install -r requirements.yaml