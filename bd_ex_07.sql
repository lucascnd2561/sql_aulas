CREATE DATABASE bd_ex_07;
USE bd_ex_07;

CREATE TABLE statuspedido(
	id INT(3) PRIMARY KEY,
    descricao VARCHAR(50)
);

CREATE TABLE tipopagamento(
	id INT(2) PRIMARY KEY,
    tipo VARCHAR(50)
);

CREATE TABLE pedido(
	cpfResponsavel VARCHAR(11),
    codigo VARCHAR(10),
    dataHoraRealizado DATETIME,
    id INT(100) PRIMARY KEY,
    avaliacao INT(2),
    dataHoraAvaliacao DATETIME,
    cnpjRestaurante VARCHAR(16),
    valorPedido FLOAT(4,2),
    idStatus INT(3),
    idTipoPagamento INT(2),
    
    CONSTRAINT fk_StatusPedido_Pedido FOREIGN KEY (idStatus)
		REFERENCES statuspedido(id),
        
    CONSTRAINT fk_TipoPagamento_Pedido FOREIGN KEY (idTipoPagamento)
		REFERENCES tipopagamento(id)    
);