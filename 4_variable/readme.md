## Variable


menggunakan variable di ansible playbook

##### Inventory
1) localhost

##### Playbook 1 variable.yaml

1) membuat file dari variable di playbook
##### Playbook 2 variable_external_file.yaml

1) membuat file dari variable di file vars_file
##### Cara Menjalankan
1) untuk internal variable `ansible-playbook -i inventory.yaml variable.yaml` 
2) untuk external `ansible-playbook -i inventory.yaml variable_external_file.yaml` variable

atau cukup jalankan `./run.sh`