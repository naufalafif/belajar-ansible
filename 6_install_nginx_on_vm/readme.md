## Install On VM

menginstall nginx di vm

#### Note !
untuk menjalankan playbook pastikan telah 
1) menginstall vagrant. untuk provision VM
2) mensetup ssh 

atau bisa memprovision vm sendiri dengan setup
1) menyesuikan ip inventory.yaml dengan ip vm
2) men ssh-copy public key ke vm

##### Inventory
1) vagrantvm1 (ip:192.168.33.11, user:vagrant)

##### Playbook
1) menginstall nginx
2) menjalankan nginx
3) mengubah content index nginx

##### Cara Menjalankan
1) menggunakan vagrant `vagrant up && ansible-playbook -i inventory.yaml playbook.yaml` atau `./run_with_vagrant.sh` 
2) tanpa vagrant `ansible-playbook -i inventory.yaml playbook.yaml` atau `./run.sh`