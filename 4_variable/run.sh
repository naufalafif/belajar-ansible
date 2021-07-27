#!/bin/bash

read -p '[1] internal or [2] external varibale ? ' input

if [ $input == '1' ];
then
  ansible-playbook -i inventory.yaml variable.yaml
elif [ $input == '2' ] 
then
  ansible-playbook -i inventory.yaml variable_external_file.yaml
else
	echo "Invalid"
fi
