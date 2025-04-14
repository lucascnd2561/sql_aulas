-- drop database bd_ex2;
CREATE DATABASE bd_ex2;

USE bd_ex2;

CREATE TABLE Categoria(
	idCategoria INT PRIMARY KEY,
    Categoria VARCHAR(45)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    Produto VARCHAR(45),
    IdCategoria INT,
    CONSTRAINT fk_Categoria_Produto FOREIGN KEY (IdCategoria)
        REFERENCES Categoria (idCategoria)
);
