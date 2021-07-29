## Vault

menggunakan vault di ansible playbook
#### Note !
```yaml
vault-pass : admin
```

##### Vault / Encrypted Data
1) vars_file : file variable yang ter-enkripsi
2) playbook_encripted_vars.yaml : playbook yang ter-enkripsi
##### Inventory
1) localhost

##### Playbook

Task:
1) membuat file menggunakan variable sebagai filename

##### Cara Menjalankan
1) untuk variable ter-enkripsi `ansible-playbook -i inventory.yaml playbook.yaml --ask-vault-pass` 
2) untuk playbook ter-enkripsi `ansible-playbook -i inventory.yaml playbook_encripted_vars.yaml --ask-vault-pass`

atau cukup jalankan `./run.sh`