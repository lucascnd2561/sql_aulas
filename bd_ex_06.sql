CREATE DATABASE bd_ex_06;
USE bd_ex_06;

CREATE TABLE Usuario(
nome VARCHAR(100),
    email VARCHAR(40),
    senha VARCHAR(30),
    cpf VARCHAR(11) NOT NULL PRIMARY KEY
);

CREATE TABLE Cartao (
    numero VARCHAR(16) PRIMARY KEY,
    cpfCnpj VARCHAR(16),
    validade DATE,
    cvv VARCHAR(3),
    nomeTitular VARCHAR(50),
    cpfUsuario VARCHAR(11),
    CONSTRAINT fk_Usuario_Cartao FOREIGN KEY (cpfUsuario)
        REFERENCES Usuario (cpf)
);
