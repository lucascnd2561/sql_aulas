CREATE DATABASE bd_ex_03;
use bd_ex_03;

CREATE TABLE tbEstoque(
	idProduto INT PRIMARY KEY,
    nomeProduto VARCHAR(45),
    precoProduto DECIMAL(10,2), -- 9999999,99
	qtdProduto INT,
    nomeFornecedor VARCHAR(45),
    dataCompra DATE,
    endFornecedor VARCHAR(100),
    tipoProduto VARCHAR(20),
    Subtotal DECIMAL(10,2),
    telFornecedor VARCHAR(20)    
);
