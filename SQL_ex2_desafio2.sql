CREATE DATABASE aula_14_04;
Use aula_14_04;

create table cliente
(id TINYINT (10) PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(12) NOT NULL,
idade INT (2) NOT NULL,
cidade VARCHAR (16) NOT NULL,
saldo decimal(10,2) NOT NULL
);

INSERT INTO cliente(id, nome, idade, cidade, saldo) VALUES
('1', 'Carlos', '45', 'São Paulo', '2500.00'),
('2', 'Mariana', '32', 'Rio de Janeiro', '3200.50'),
('3', 'Pedro', '27', 'Belo Horizonte', '1500.75'),
('4', 'Fernanda', '38', 'Curitiba', '4200.00');

SELECT
nome,cidade
FROM cliente
WHERE cidade ='rio de janeiro';


SELECT
nome, saldo as 'dec saldo'
FROM cliente
WHERE saldo > 2.000
ORDER BY saldo DESC;


SELECT
nome,idade
FROM cliente
WHERE idade > 30
ORDER BY idade;

-- 2. filtrandoe Aplicando Condições

SELECT
nome,idade
FROM cliente
WHERE idade>= 25 and  idade <=40;

SELECT
nome,idade
FROM cliente
WHERE idade between 25 and 40;


SELECT
nome
FROM cliente
WHERE nome LIKE 'F%';

SELECT
nome,cidade
FROM cliente
where cidade NOT IN ('São Paulo','Curitiba');

SELECT
nome,cidade
FROM cliente
where cidade <> 'São Paulo' and cidade <>'Curitiba';


-- 3. Agregação e Agrupamento
CREATE TABLE pedido (
    id TINYINT PRIMARY KEY AUTO_INCREMENT,
    cliente_id TINYINT NOT NULL,
    valor NUMERIC(10 , 2 ) NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (cliente_id)
        REFERENCES cliente (id)
);
 
INSERT INTO pedido
(cliente_id, valor, data_pedido)
VALUES
(1, 500, '2024-03-10'),
(2, 1200, '2024-03-12'),
(3, 300.50, '2024-03-15'),
(1, 800, '2024-03-18');
 
-- 1. Conte quantos pedidos foram feitos no total.
SELECT 
    COUNT(id)
FROM
    pedido;
-- 2. Calcule o valor médio dos pedidos.
SELECT 
    AVG(valor)
FROM
    pedido;
 
-- 3. Agrupe os pedidos por cliente_id e exiba o total gasto por cada cliente.
 
--  Use um INNER JOIN para exibir os pedidos junto com o nome do cliente correspondente.
 
SELECT 
    c.nome, SUM(p.valor) as Total
FROM
    cliente c
        INNER JOIN
    pedido p ON c.id = p.cliente_id
GROUP BY p.cliente_id;
 
SELECT * FROM cliente;
SELECT * FROM pedido;
 
 
-- 2. Use um LEFT JOIN para exibir todos os clientes, incluindo aqueles que ainda não fizeram pedidos
 
SELECT 
    *
FROM
    cliente c
        LEFT JOIN
    pedido p ON c.id = p.cliente_id;

 
-- 5. Subconsultas (Subqueries) Usando as tabelas cliente e pedido 
-- 1. Encontre os clientes que já fizeram pedidos acima da média dos pedidos existentes.
    SELECT 
    c.nome AS cliente, p.valor
FROM
    cliente c
        JOIN
    pedido p ON c.id = p.cliente_id
WHERE
    p.valor > (SELECT 
            AVG(valor)
        FROM
            pedido);
 
-- 2. Liste os clientes que têm pelo menos um pedido maior que 1.000.
 
	SELECT 
    c.nome
FROM
    cliente c
        JOIN
    pedido p ON c.id = p.cliente_id
WHERE
    p.id IN (SELECT 
            id
        FROM
            pedido
        WHERE
            valor > 1000);
-- 6. Modificando Dados
-- 1. Insira um novo cliente chamado "Rafael", de Porto Alegre.
INSERT INTO cliente
(nome, idade, cidade, saldo)
VALUES
('Rafael', 62, 'Porto Alegre', 2500.00);
-- 2. Atualize o saldo de todos os clientes, adicionando 10% ao saldo atual.
UPDATE cliente 
SET 
    saldo = saldo * 1.1;
-- 3. Exclua os pedidos com valor inferior a 500.
DELETE FROM pedido 
WHERE
    valor < 500;


