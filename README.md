
### DDL - Data Definition Language - Linguagem de Definição de Dados.
São os comandos que interagem com os objetos do banco.

São comandos DDL no SQL Server: CREATE, ALTER e DROP

### DML - Data Manipulation Language - Linguagem de Manipulação de Dados.
São os comandos que interagem com os dados dentro das tabelas.

São comandos DML no SQL Server: INSERT, DELETE, UPDATE e SELECT

### DQL - Data Query Language - Linguagem de Consulta de dados (no contexto do SQL Server, o SELECT é frequentemente classificado como DML).

São comandos DQL no SQL Server: SELECT (é o comando de consulta)

### DTL - Data Transaction Language - Linguagem de Transação de Dados.
São os comandos para controle de transação.

São comandos DTL no SQL Server: BEGIN TRANSACTION, COMMIT e ROLLBACK

### DCL - Data Control Language - Linguagem de Controle de Dados.
São os comandos para controlar a parte de segurança do banco de dados.

São comandos DCL no SQL Server: GRANT e REVOKE.

# Guia de Inserção de Dados

Este guia oferece uma visão geral de como inserir dados nas tabelas do banco de dados da biblioteca.



### Alterar o nome de uma tabela (SQL Server):

```sql
EXEC sp_rename 'Livro', 'Book';
```

### Alterar o nome de uma coluna (SQL Server):

```sql
EXEC sp_rename 'Livro.titulo', 'nome_do_livro', 'COLUMN';
```

### Alterar o tipo de uma coluna (SQL Server):

```sql
ALTER TABLE Livro ALTER COLUMN ano_publicacao int;
```

# DML (Data Manipulation Language)

## Inserindo Dados



### Livro

Para inserir um novo livro:

```sql
INSERT INTO Livro (numero_registro, titulo, ano_publicacao, autor)
VALUES (1, 'Nome do Livro', '2023', 'Nome do Autor'),
        (2, 'Nome do livro 2','2022','Nome do autor 1');
```

### Periódico

Para inserir um novo periódico:

```sql
INSERT INTO Periodico (numero_registro, titulo, ano_publicacao, autor)
VALUES (1, 'Nome do Periódico', '2023', 'Nome do Autor');
```

### Material Especial

Para inserir um novo material especial:

```sql
INSERT INTO Material_Especial (numero_registro, ano_publicacao, estilo, autor)
VALUES (1, '2023', 'Estilo do Material', 'Nome do Autor');
```

### Evento

Para inserir um novo evento:

```sql
INSERT INTO Evento (id_evento, data, custo, tipo)
VALUES (1, '2023-01-01', 100.00, 'Tipo do Evento');
```

### Usuário

Para inserir um novo usuário:

```sql
INSERT INTO Usuario (cpf, nome, celular)
VALUES ('12345678901', 'Nome do Usuário', '9876543210');
```

### Empréstimo de Livro

Para inserir um novo empréstimo de livro:

```sql
INSERT INTO Emprestimo_Livro (id_emprestimo, cpf_usuario, numero_registro_livro, data_retirada, data_devolucao)
VALUES (1, '12345678901', 1, '2023-01-01', '2023-01-15');
```

### Empréstimo de Periódico

Para inserir um novo empréstimo de periódico:

```sql
INSERT INTO Emprestimo_Periodico (id_emprestimo, cpf_usuario, numero_registro_periodico, data_retirada, data_devolucao)
VALUES (1, '12345678901', 1, '2023-01-01', '2023-01-15');
```

### Empréstimo de Material Especial

Para inserir um novo empréstimo de material especial:

```sql
INSERT INTO Emprestimo_Material_Especial (id_emprestimo, cpf_usuario, numero_registro_material_especial, data_retirada, data_devolucao)
VALUES (1, '12345678901', 1, '2023-01-01', '2023-01-15'),
        (1, '12345678901', 1, '2023-01-01', '2023-01-15'),
        (1, '12345678901', 1, '2023-01-01', '2023-01-15'),
        (1, '12345678901', 1, '2023-01-01', '2023-01-15');
```

### Empréstimo de Evento

Para inserir um novo empréstimo de evento:

```sql
INSERT INTO Emprestimo_Evento (id_emprestimo, cpf_usuario, id_evento)
VALUES (1, '12345678901', 1);
```

### Funcionário da Biblioteca

Para inserir um novo funcionário da biblioteca:

```sql
INSERT INTO Funcionario_Biblioteca (matricula, nome, cnpj_biblioteca)
VALUES (1, 'Nome do Funcionário', '12345678901234');
```

### Biblioteca

Para inserir uma nova biblioteca:

```sql
INSERT INTO Biblioteca (cnpj, nome)
VALUES ('12345678901234', 'Nome da Biblioteca');
```

### Alterar um registro (SQL Server):

```sql
UPDATE Livro
SET titulo = 'Novo Nome do Livro', ano_publicacao = '2024'
WHERE numero_registro = 1;
```

## Consultas (SQL Server):

Para consultar todos os livros publicados em 2023:

```sql
SELECT * FROM Livro WHERE ano_publicacao = '2023';
```

Para consultar todos os usuários cujo nome começa com "João":

```sql
SELECT * FROM Usuario WHERE nome LIKE 'João%';
```
Deletar um registro
```sql
DELETE FROM Clientes
WHERE ID = 123;
```

Alterar tabela com registros
```sql
ALTER TABLE Cliente
ADD cpf varchar(11) DEFAULT '0000000000000';
```