## Notify & Handler

menggunakan notify & handle di ansible playbook

##### Inventory
1) localhost

##### Playbook
Task:
1) membuat file & mentrigger/notify untuk membuat file baru & menghapus file lama

Handler:
1) create_another_file, membuat file baru
2) clean_file_1, menghapus file lama

##### Cara Menjalankan
`ansible-playbook -i inventory.yaml playbook.yaml` atau `./run.sh`