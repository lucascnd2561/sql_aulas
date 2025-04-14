-- DROP DATABASE bd_ex_05;
CREATE DATABASE bd_ex_05;
USE bd_ex_05;

CREATE TABLE Fornecedor(
	idFornecedor INT NOT NULL PRIMARY KEY,
    razaoSocial VARCHAR(20),
    nomeFantasia VARCHAR(20),
    telefone VARCHAR(20)
);

CREATE TABLE Cliente (
	idCliente INT NOT NULL PRIMARY KEY,
    nomeCliente VARCHAR(20),
    rua VARCHAR(20),
    numero INT,
    fone VARCHAR(20),
    bairro VARCHAR(20),
    cidade VARCHAR(20),
    estado CHAR(2)
);

CREATE TABLE Produto (
    idProduto INT NOT NULL PRIMARY KEY,
    nomeProduto VARCHAR(20),
    precoUnitario DECIMAL(12,2 ),
    idFornecedor INT,
    CONSTRAINT fk_Fornecedor_Produto FOREIGN KEY (idFornecedor)
        REFERENCES Fornecedor (idFornecedor)
);

CREATE TABLE NotaFiscal (
    numeroNota INT NOT NULL PRIMARY KEY,
    valorNota DECIMAL(12,2),
    dataEmissao DATE ,
    idCliente INT,
    CONSTRAINT fk_Cliente_NotaFiscal FOREIGN KEY (idCliente)
        REFERENCES Cliente (idCliente)
);

CREATE TABLE ItemNota (
    numeroNota INT NOT NULL,
    idProduto INT NOT NULL,
    qtdeItem INT,
    valorItem DECIMAL(12,2),
    -- Criando uma chave primaria composta
    CONSTRAINT pk_numnota_idproduto PRIMARY KEY (numeroNota , idProduto),
    
    -- Criando uma chave estrangeira de NotaFiscal
    CONSTRAINT fk_NotaFiscal_ItemNota FOREIGN KEY (numeroNota)
        REFERENCES NotaFiscal (numeroNota),
    
    -- Criando uma chave estrangeira de Produto
    CONSTRAINT fk_Produto_ItemNota FOREIGN KEY (idProduto)
        REFERENCES Produto (idProduto)
);












