-- Criando o banco de dados
create database sistema_biblioteca;
-- Entrar no banco de dados
use sistema_biblioteca;
-- Criando a tabela livro
create table livro(
	numero_de_registro char(30) primary key,
	titulo varchar(100),
	ano_publicacao varchar(4),
	autor varchar(50)
);

