#!/bin/bash

read -p '[1] encrypted variable or [2] encrypted playbook ? ' input

if [ $input == '1' ];
then
  ansible-playbook -i inventory.yaml playbook.yaml --ask-vault-pass
elif [ $input == '2' ] 
then
  ansible-playbook -i inventory.yaml playbook_encripted_vars.yaml --ask-vault-pass
else
	echo "Invalid"
fi
