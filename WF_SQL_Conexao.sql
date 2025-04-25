CREATE DATABASE AULAS_UC3;
USE AULAS_UC3;

CREATE TABLE contato(
id INT AUTO_INCREMENT,
nome VARCHAR (150) NOT NULL,
email VARCHAR (150) NOT NULL,
telefone VARCHAR (150) NOT NULL,
PRIMARY KEY (id)
);


CREATE TABLE cliente (
	id INT AUTO_INCREMENT,
	nome VARCHAR (150) NOT NULL,
	email VARCHAR (150) NOT NULL,
	telefone VARCHAR (150) NOT NULL,
	endereco VARCHAR(150) NOT NULL,
	PRIMARY KEY(id)
);

SELECT * FROM cliente;

DELETE FROM cliente WHERE id = 2;

SELECT * FROM contato;
desc contato;

SELECT nome, email AS cx_email FROM contato 
WHERE nome LIKE "%h%";

SELECT * FROM Cliente;
desc cliente;

SELECT nome, endereco AS endereco_rua FROM cliente
WHERE nome LIKE "%R%";