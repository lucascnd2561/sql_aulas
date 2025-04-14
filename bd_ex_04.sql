-- DROP DATABASE bd_ex_04;
CREATE DATABASE bd_ex_04;
USE bd_ex_04;

CREATE TABLE Funcao(
	cod_funcao INT NOT NULL PRIMARY KEY,
    nome_funcao VARCHAR(100),
    salario DECIMAL(10,2)
);

 CREATE TABLE Funcionario(
	cpf VARCHAR(14) PRIMARY KEY,
    nome_Funcionario VARCHAR(100),
    cod_funcao INT NOT NULL,
    CONSTRAINT fk_Funcao_Funcionario FOREIGN KEY (cod_funcao)
		REFERENCES Funcao (cod_funcao)
 );