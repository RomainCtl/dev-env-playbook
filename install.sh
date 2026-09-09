#!/bin/bash -e

printf '\n Provisioning dev environment, Please wait...\n\n'

sudo apt update && sudo apt install -y ansible

ansible-galaxy install -r requirements.yml
ansible-playbook --connection local --inventory inventory.ini playbook.yml

printf '\n\nYour environment is ready! Don''t forget to reload your prompt to finish installation\n'
