## Conditional

menggunakan conditional di ansible playbook

##### Inventory
1) localhost
2) localhost2
3) localhost3

##### Playbook
1) menjalankan command `ls` jika host adalah localhost2

##### Cara Menjalankan
`ansible-playbook -i inventory.yaml playbook.yaml` atau `./run.sh`