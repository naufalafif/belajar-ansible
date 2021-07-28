## Deploy Docker App on VM

men-deploy docker based app di VM

#### Note !
untuk menjalankan playbook pastikan telah 
1) menginstall vagrant. untuk provision VM
2) mensetup ssh 

atau bisa memprovision vm sendiri dengan setup
1) menyesuikan ip inventory.yaml dengan ip vm
2) men ssh-copy public key ke vm

##### Inventory
1) vagrantvm1 (ip:192.168.33.15, user:vagrant)

##### Playbook

Variable:
```
    create_containers: 4
    default_container_name: vue-app
    default_container_image: naufalafif58/vue-crud-example
    default_container_exposed_port: 8888
```

Task:
1) apt update
2) install packages
3) install docker community & python-docker [2-6]
4) pull/unduh docker image [7]
5) cek status container apakah berjalan [8]
6) menjalankan app container jika belum berjalan [9]


##### Cara Menjalankan
1) menggunakan vagrant `vagrant up && ansible-playbook -i inventory.yaml playbook.yaml` atau `./run_with_vagrant.sh` 
2) tanpa vagrant `ansible-playbook -i inventory.yaml playbook.yaml` atau `./run.sh`