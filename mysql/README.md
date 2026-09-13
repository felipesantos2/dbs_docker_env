
Os scripts iniciais só são executados na primeira vez que o container for criado. Caso o container já exista em disco ele não é excutado.

```yml 
    docker-entrypoint-initdb.d/file1.sql
    docker-entrypoint-initdb.d/file2.sql
```

```yml
    volumes:
      - mysql_data_test:/var/lib/mysql
      - ./create-first-table.sql:/docker-entrypoint-initdb.d/create-first-table.sql
```