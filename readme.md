# Belajar Ansible
Catatan Belajar & Contoh Penggunaan Ansible

Ansible adalah automation tool yang digunakan untuk meng-otomasi proses provisioning & konfigurasi server. ketika men-setup sebuah server biasanya hal yang pertama kita lakukan ada melakukan apt-get update, baru setelah itu menginstall package2 lain. dengan menggunakan ansible, kita bisa mengautomasi proses2 tadi kedalam bentuk instruksi yang nantinya dapat digunakan secara berulang. 

### Istilah
Ada beberapa istilah yang akan kita jumpai ketika belajar ansible. antara lain : 
##### Inventory
Inventory adalah file yang berisi daftar host/server yang menjadi target automasi ansible atau tempat dimana script/task ansible dijalankan.

contoh inventory : 
```yaml
---
all:
  hosts:
    vm1:
      ansible_connection: ssh
      ansible_host: "10.63.137.15"
      ansible_user: ubuntu
```

##### Playbook
Playbook adalah script automasi dari ansible dalam bentuk file yaml. Host/target, tasks dll didefinisikan dalam playbook.

contoh playbook
```yaml
---
- name: mejalankan script di server
  hosts: vm1
  tasks:
    - name: menjalankan ls
      command: ls
```

##### Roles
Roles adalah fitur ansible untuk mengelompokan script2. misal kita memiliki 1 playbook ansible lengkap dari setup packages, db sampai deploy aplikasi. kita bisa membagi proses2 tadi kedalam bbrp roles "install packages", "setup databases", "setup application". ketika proses2 tadi sudah dibagi kedalam bentuk roles, maka kedepannya tidak perlu lagi mendefine playbook secara manual, melainkan bisa memanggil roles yang dibutuhkan.

contoh : 
```yaml
---
- name: learn roles
  hosts: vm1
  roles:
    - install packages
    - setup databases
    - setup application
```


##### Vault
Vault adalah fitur ansible untuk mengenkripsi informasi2 penting dalam script ansible seperti password dll.

### Contoh
1) Run on Local [open](1_run_on_local)
2) Conditional [open](2_conditional)
3) Loop [open](3_loop)
4) Variable [open](4_variable)
5) Notify & Handler [open](5_notify_handlers)
6) Install Nginx on VM [open](6_install_nginx_on_vm)
7) Deploy Docker App on VM [open](7_deploy_docker_app_on_vm)
8) Roles [open](8_roles)
9) Vault [open](9_vault)






