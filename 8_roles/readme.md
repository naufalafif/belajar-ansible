## Roles

menggunakan roles di ansible playbook

##### Roles
1) File Creator
```yaml
---
- name: create file
  command: touch /tmp/file_from_creator.txt
```
2) File Remover
```yaml
---
- name: remove file
  command: rm /tmp/file_from_creator.txt
```

##### Inventory
1) localhost

##### Playbook

Task:
1) membuat file menggunakan role file_creator
2) menghapus file menggunakan role file_remover

##### Cara Menjalankan
`ansible-playbook -i inventory.yaml playbook.yaml` atau `./run.sh`