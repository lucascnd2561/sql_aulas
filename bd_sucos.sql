-- DROP table tb_cliente;

CREATE DATABASE sucos;

USE sucos;

create table tb_cliente(
id INT AUTO_INCREMENT PRIMARY KEY,
CPF VARCHAR (11) NOT NULL UNIQUE,
NOME VARCHAR (100) NOT NULL,
ENDERECO1 VARCHAR (150) NOT NULL,
ENDERECO2 VARCHAR (150) NOT NULL,
BAIRRO VARCHAR (50) NOT NULL,
CIDADE VARCHAR (50) NOT NULL,
ESTADO VARCHAR (2) NOT NULL,
CEP VARCHAR (8) NOT NULL,
IDADE SMALLINT NOT NULL,
SEXO VARCHAR (2) NOT NULL,
TELEFONE VARCHAR (14) NOT NULL,
LIMITE_CREDITO FLOAT NOT NULL,
VOLUME_COMPRA FLOAT NOT NULL,
PRIMEIRA_COMPRA BIT NOT NULL
);

-- Comentário
/*
Sou comentario

de 

várias linhas
*/
SELECT * FROM tb_cliente;
SELECT * FROM tb_produto;

select nome, cpf from tb_cliente;

INSERT INTO tb_cliente (nome,cpf) values ('Reginaldo','11111111111');

INSERT INTO tb_cliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE,
ESTADO, CEP, IDADE, SEXO, TELEFONE, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA)  
values('12345678901', 'Lucas Pereira', 'Rua das palmeiras', '100', 'Bloco A', 'centro', 
'Belo Horizonte', 'MG', '30123000', '28',
 'Masculino', '(31) 91234-5678', 7000.00, 2000.00, '1');
 
 INSERT INTO tb_cliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, TELEFONE, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA) VALUES 

('12345678901', 'Lucas Pereira', 'Rua São Miguel, 200', 'Apto 10', 'São Miguel Paulista', 'São Paulo', 'SP', '08015000', 28, 'Masculino', '(11) 91234-5678', 7000.00, 2000.00, 1),

('98765432100', 'Ana Clara', 'Rua do Campo, 150', 'Casa 5', 'Jardim Ângela', 'São Paulo', 'SP', '05853000', 32, 'Feminino', '(11) 99876-5432', 5000.00, 1500.00, 1),

('11122233344', 'Marcos Silva', 'Rua da Paz, 75', 'Apto 4', 'Jardim São Luis', 'São Paulo', 'SP', '05874000', 45, 'Masculino', '(11) 99999-8888', 6000.00, 3000.00, 1),

('22233344455', 'Fernanda Lima', 'Avenida das Américas, 300', 'Casa 1', 'Jardim Helena', 'São Paulo', 'SP', '05852000', 38, 'Feminino', '(11) 98888-7777', 4000.00, 2500.00, 1),

('33344455566', 'Carlos Santos', 'Rua dos Três Irmãos, 100', 'Casa 2', 'Vila Progredior', 'São Paulo', 'SP', '03250000', 50, 'Masculino', '(11) 97777-6666', 5500.00, 1800.00, 1),

('44455566677', 'Juliana Costa', 'Rua do Ouro, 220', 'Apto 3', 'Jardim São Carlos', 'São Paulo', 'SP', '05852000', 29, 'Feminino', '(11) 96666-5555', 3000.00, 1200.00, 1),

('55566677788', 'Roberto Alves', 'Rua da Esperança, 150', 'Casa 10', 'Vila Curuçá', 'São Paulo', 'SP', '08041000', 36, 'Masculino', '(11) 95555-4444', 7500.00, 4000.00, 1),

('66677788899', 'Patrícia Gomes', 'Rua dos Eucaliptos, 90', 'Apto 5', 'Jardim Ângela', 'São Paulo', 'SP', '05853000', 41, 'Feminino', '(11) 94444-3333', 4500.00, 1900.00, 1),

('77788899900', 'André Oliveira', 'Rua do Sol, 300', 'Casa 1', 'Parque São Rafael', 'São Paulo', 'SP', '05849000', 27, 'Masculino', '(11) 93333-2222', 5000.00, 1500.00, 1),

('88899900011', 'Cláudia Martins', 'Avenida do Campo, 200', 'Apto 6', 'Jardim São Luís', 'São Paulo', 'SP', '05874000', 34, 'Feminino', '(11) 92222-1111', 3500.00, 1300.00, 1),

('99900011122', 'Ricardo Ferreira', 'Rua do Lago, 150', 'Casa 2', 'Vila Nova Cachoeirinha', 'São Paulo', 'SP', '02556000', 42, 'Masculino', '(11) 91111-0000', 5200.00, 2000.00, 1),

('00011122233', 'Letícia Rocha', 'Rua das Flores, 50', 'Apto 1', 'Vila Matilde', 'São Paulo', 'SP', '03630000', 30, 'Feminino', '(11) 90000-9999', 4800.00, 1600.00, 1),

('11122233344', 'Felipe Mendes', 'Rua da Liberdade, 120', 'Casa 4', 'Vila Clorin', 'São Paulo', 'SP', '03196000', 37, 'Masculino', '(11) 98888-7777', 6000.00, 2100.00, 1),

('22233344455', 'Sofia Araújo', 'Rua da Alegria, 45', 'Casa 3', 'Vila Ré', 'São Paulo', 'SP', '03353000', 26, 'Feminino', '(11) 97777-6666', 3900.00, 1400.00, 1),

('33344455566', 'Thiago Nascimento', 'Rua dos Lírios, 75', 'Apto 2', 'Jardim Maria Adelaide', 'São Paulo', 'SP', '03840000', 48, 'Masculino', '(11) 96666-5555', 7000.00, 3000.00, 1),

('44455566677', 'Gabriela Lima', 'Rua da Nova, 80', 'Casa 5', 'Jardim Ângela', 'São Paulo', 'SP', '05853000', 29, 'Feminino', '(11) 95555-4444', 3000.00, 1200.00, 1),

('55566677788', 'Eduardo Castilho', 'Avenida dos Trabalhadores, 300', 'Casa 8', 'Jardim São Carlos', 'São Paulo', 'SP', '05852000', 40, 'Masculino', '(11) 94444-3333', 5500.00, 1900.00, 1),

('66677788899', 'Isabela Cardoso', 'Rua do Comércio, 150', 'Apto 4', 'Vila Progredior', 'São Paulo', 'SP', '03250000', 41, 'Feminino', '(11) 93333-2222', 4800.00, 1600.00, 1),

('77788899900', 'Marcelo Pires', 'Rua da Felicidade, 90', 'Casa 1', 'Vila Curuçá', 'São Paulo', 'SP', '08041000', 35, 'Masculino', '(11) 92222-1111', 6000.00, 2000.00, 1),

('88899900011', 'Tânia Ferreira', 'Rua das Palmeiras, 60', 'Apto 3', 'Jardim São Luís', 'São Paulo', 'SP', '05874000', 33, 'Feminino', '(11) 90000-9999', 5000.00, 1500.00, 1),

('99900011122', 'Paulo Henrique', 'Rua do Sol, 250', 'Casa 2', 'Parque São Rafael', 'São Paulo', 'SP', '05849000', 39, 'Masculino', '(11) 99999-8888', 7200.00, 2500.00, 1),

('00011122233', 'Renata Alves', 'Rua das Estrelas, 70', 'Casa 3', 'Jardim São Carlos', 'São Paulo', 'SP', '05852000', 44, 'Feminino', '(11) 98888-7777', 6300.00, 2300.00, 1),

('11122233344', 'Gustavo Cunha', 'Rua das Flores, 120', 'Casa 1', 'Vila Ré', 'São Paulo', 'SP', '03353000', 29, 'Masculino', '(11) 97777-6666', 4900.00, 1700.00, 1),

('22233344455', 'Carla Mendes', 'Avenida dos Coqueiros, 150', 'Casa 2', 'Jardim Ângela', 'São Paulo', 'SP', '05853000', 36, 'Feminino', '(11) 96666-5555', 4200.00, 1600.00, 1),

('33344455566', 'Ricardo Alves', 'Rua do Progresso, 100', 'Casa 5', 'Vila Progredior', 'São Paulo', 'SP', '03250000', 46, 'Masculino', '(11) 95555-4444', 5500.00, 2000.00, 1),

('44455566677', 'Juliana Santana', 'Rua da Liberdade, 50', 'Casa 1', 'Parque São Rafael', 'São Paulo', 'SP', '05849000', 30, 'Feminino', '(11) 94444-3333', 3100.00, 1200.00, 1),

('55566677788', 'Thiago Martins', 'Rua das Flores, 75', 'Casa 3', 'Vila Matilde', 'São Paulo', 'SP', '03630000', 38, 'Masculino', '(11) 93333-2222', 3900.00, 1500.00, 1),

('66677788899', 'Aline Costa', 'Rua do Amor, 80', 'Casa 2', 'Vila Curuçá', 'São Paulo', 'SP', '08041000', 27, 'Feminino', '(11) 92222-1111', 4500.00, 1300.00, 1),

('77788899900', 'Eduardo Lima', 'Rua das Palmeiras, 90', 'Casa 4', 'Vila Nova Cachoeirinha', 'São Paulo', 'SP', '02556000', 35, 'Masculino', '(11) 91111-0000', 5200.00, 1800.00, 1),

('88899900011', 'Cláudia Rocha', 'Rua da Esperança, 100', 'Casa 3', 'Jardim São Luis', 'São Paulo', 'SP', '05874000', 34, 'Feminino', '(11) 90000-9999', 4800.00, 1600.00, 1),

('99900011122', 'Marcos Pereira', 'Rua da Alegria, 200', 'Casa 1', 'Vila Ré', 'São Paulo', 'SP', '03353000', 50, 'Masculino', '(11) 98888-7777', 6200.00, 2100.00, 1),

('00011122233', 'Sofia Almeida', 'Rua do Lago, 250', 'Casa 2', 'Jardim Ângela', 'São Paulo', 'SP', '05853000', 29, 'Feminino', '(11) 97777-6666', 4000.00, 1400.00, 1);
 
 
 ALTER TABLE tb_cliente ADD PRIMARY KEY (cpf);
 
 
 INSERT INTO tb_cliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, TELEFONE, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA) VALUES
('12345678901', 'Lucas Pereira', 'Rua São Miguel, 200', 'Apto 101', 'São Miguel Paulista', 'São Paulo', 'SP', '08421000', 30, 'Masculino', '(11) 91234-5678', 1000.00, 150.00, 1),
('10987654321', 'Maria Silva', 'Rua da Paz, 50', 'Casa 2', 'Itaquera', 'São Paulo', 'SP', '08240000', 28, 'Feminino', '(11) 99876-5432', 2000.00, 250.00, 0),
('98765432100', 'João Santos', 'Av. São Mateus, 1000', '', 'Vila Matilde', 'São Paulo', 'SP', '03519000', 35, 'Masculino', '(11) 93456-7890', 1500.00, 300.00, 1);


INSERT INTO tb_cliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, TELEFONE, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA) VALUES

('12312312312', 'Ana Costa', 'Rua do Sol, 45', '', 'Jardim São Paulo', 'São Paulo', 'SP', '03534000', 27, 'Feminino', '(11) 93567-1234', 1200.00, 200.00, 1),

('32132132132', 'Carlos Almeida', 'Rua das Flores, 70', 'Casa 3', 'Vila Carrão', 'São Paulo', 'SP', '03027000', 32, 'Masculino', '(11) 93345-6789', 1500.00, 300.00, 0),

('45645645645', 'Juliana Lima', 'Av. Rio das Pedras, 120', '', 'Vila Joaniza', 'São Paulo', 'SP', '04212000', 29, 'Feminino', '(11) 91234-5678', 800.00, 100.00, 1),

('65465465465', 'Roberto Santos', 'Rua do Comércio, 90', 'Apto 202', 'Mooca', 'São Paulo', 'SP', '03178000', 40, 'Masculino', '(11) 91987-6543', 1600.00, 400.00, 0),

('78978978978', 'Fernanda Torres', 'Rua das Oliveiras, 25', '', 'Parelheiros', 'São Paulo', 'SP', '04812000', 38, 'Feminino', '(11) 91123-4567', 1300.00, 250.00, 1),

('15915915915', 'Marcos Silva', 'Rua das Garças, 10', '', 'Capão Redondo', 'São Paulo', 'SP', '05830000', 34, 'Masculino', '(11) 93456-7890', 900.00, 150.00, 0),

('75375375375', 'Patrícia Gomes', 'Av. Inácio Monteiro, 200', '', 'Vila Prudente', 'São Paulo', 'SP', '03153000', 31, 'Feminino', '(11) 91789-1234', 1100.00, 220.00, 1),

('85285285285', 'Rafael Mendes', 'Rua do Futuro, 80', '', 'Jardim São Luís', 'São Paulo', 'SP', '04224000', 26, 'Masculino', '(11) 91234-5678', 950.00, 180.00, 0),

('36936936936', 'Sofia Ribeiro', 'Rua dos Lírios, 60', 'Casa 1', 'Vila Formosa', 'São Paulo', 'SP', '03312000', 25, 'Feminino', '(11) 99876-5432', 1300.00, 300.00, 1),

('25825825825', 'Lucas Martins', 'Av. dos Anjos, 150', '', 'Itaquera', 'São Paulo', 'SP', '08250000', 30, 'Masculino', '(11) 93345-6789', 1200.00, 200.00, 0),

('14714714714', 'Camila Rocha', 'Rua das Acácias, 75', '', 'Jardim Ângela', 'São Paulo', 'SP', '04842000', 29, 'Feminino', '(11) 91987-6543', 1100.00, 220.00, 1),

('36925814725', 'Tiago Ferreira', 'Rua do Norte, 85', 'Apto 303', 'Guaianases', 'São Paulo', 'SP', '08450000', 33, 'Masculino', '(11) 93456-7890', 1000.00, 150.00, 0),

('74174174174', 'Verônica Lima', 'Rua da Esperança, 20', '', 'São Mateus', 'São Paulo', 'SP', '04120000', 36, 'Feminino', '(11) 91234-5678', 950.00, 300.00, 1),

('96396396396', 'André Costa', 'Rua dos Pássaros, 30', '', 'Vila Curuçá', 'São Paulo', 'SP', '08470000', 28, 'Masculino', '(11) 99876-5432', 850.00, 190.00, 0),

('15975345612', 'Tatiane Silva', 'Av. das Amoreiras, 110', '', 'Cangaíba', 'São Paulo', 'SP', '03420000', 27, 'Feminino', '(11) 93345-6789', 1300.00, 240.00, 1),

('75395185263', 'Gustavo Almeida', 'Rua do Sol Nascente, 90', '', 'Vila Maria', 'São Paulo', 'SP', '02180000', 31, 'Masculino', '(11) 91987-6543', 1400.00, 320.00, 0),

('25814736985', 'Elaine Torres', 'Rua das Palmeiras, 15', '', 'Ipiranga', 'São Paulo', 'SP', '04252000', 34, 'Feminino', '(11) 93456-7890', 1100.00, 210.00, 1),

('32165498712', 'Felipe Santos', 'Rua do Saber, 55', 'Casa 4', 'Móoca', 'São Paulo', 'SP', '03150000', 29, 'Masculino', '(11) 91234-5678', 950.00, 180.00, 0);


CREATE TABLE tb_produto(
produto VARCHAR (20),
nome VARCHAR (150),
embalagem VARCHAR (50),
tamanho VARCHAR (50),
sabor VARCHAR (50),
preco_lista FLOAT 
);
 
 alter table tb_produto add primary key (produto);
 
 INSERT INTO tb_produto (produto, nome, embalagem, tamanho, sabor, preco_lista)
 VALUES ('1040107', 'Light - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.555); 
 
 SELECT * FROM tb_produto;
 
 INSERT INTO tb_produto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES 
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros - Melância', 'PET', '1.5 Litros', 'Melância', 19.51),
('1088126', 'Linha Citros - 1 Litro - Limão', 'PET', '1 Litro', 'Limão', 7.00),
('544931', 'Frescor do Verão - 350 ml - Limão', 'Lata', '350 ml', 'Limão', 2.46),
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Garrafa', '470 ml', 'Manga', 5.18),
('1042712', 'Linha Citros - 700 ml - Limão', 'Garrafa', '700 ml', 'Limão', 4.90),
('788975', 'Pedaços de Frutas - 1,5 Litros - Maça', 'PET', '1.5 Litros', 'Maça', 18.01),
('1002767', 'Videira do Campo - 700 ml - Cereja/Maça', 'Garrafa', '700 ml', 'Cereja/Maça', 8.41),
('231776', 'Festival de Sabores - 700 ml - Açai', 'Garrafa', '700 ml', 'Açai', 13.31),
('479745', 'Clean - 470 ml - Laranja', 'Garrafa', '470 ml', 'Laranja', 3.77),
('1051518', 'Frescor do Verão - 470 ml - Limão', 'Garrafa', '470 ml', 'Limão', 3.30),
('1101035', 'Linha Refrescante - 1 Litro - Morango/Limão', 'PET', '1 Litro', 'Morango/Limão', 9.01),
('229900', 'Pedaços de Frutas - 350 ml - Maça', 'Lata', '350 ml', 'Maça', 4.21),
('1086543', 'Linha Refrescante - 1 Litro - Manga', 'PET', '1 Litro', 'Manga', 11.01),
('695594', 'Festival de Sabores - 1,5 Litros - Açai', 'PET', '1.5 Litros', 'Açai', 28.51),
('838819', 'Clean - 1,5 Litros - Laranja', 'PET', '1.5 Litros', 'Laranja', 12.01),
('326779', 'Linha Refrescante - 1,5 Litros - Manga', 'PET', '1.5 Litros', 'Manga', 16.51),
('520380', 'Pedaços de Frutas - 1 Litro - Maça', 'PET', '1 Litro', 'Maça', 12.01),
('1041119', 'Linha Citros - 700 ml - Lima/Limão', 'Garrafa', '700 ml', 'Lima/Limão', 4.90),
('243083', 'Festival de Sabores - 1,5 Litros - Maracujá', 'PET', '1.5 Litros', 'Maracujá', 10.51),
('394479', 'Sabor da Montanha - 700 ml - Cereja', 'Garrafa', '700 ml', 'Cereja', 8.41),
('746596', 'Light - 1,5 Litros - Melância', 'PET', '1.5 Litros', 'Melância', 19.51),
('773912', 'Clean - 1 Litro - Laranja', 'PET', '1 Litro', 'Laranja', 8.01),
('826490', 'Linha Refrescante - 700 ml - Morango/Limão', 'Garrafa', '700 ml', 'Morango/Limão', 6.31),
('723457', 'Festival de Sabores - 700 ml - Maracujá', 'Garrafa', '700 ml', 'Maracujá', 4.91),
('812829', 'Clean - 350 ml - Laranja', 'Lata', '350 ml', 'Laranja', 2.81),
('290478', 'Videira do Campo - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56),
('783663', 'Sabor da Montanha - 700 ml - Morango', 'Garrafa', '700 ml', 'Morango', 7.71),
('235653', 'Frescor do Verão - 350 ml - Manga', 'Lata', '350 ml', 'Manga', 3.86),
('1002334', 'Linha Citros - 1 Litro - Lima/Limão', 'PET', '1 Litro', 'Lima/Limão', 7.00),
('1013793', 'Videira do Campo - 2 Litros - Cereja/Maça', 'PET', '2 Litros', 'Cereja/Maça', 24.01),
('1096818', 'Linha Refrescante - 700 ml - Manga', 'Garrafa', '700 ml', 'Manga', 7.71),
('1022450', 'Festival de Sabores - 2 Litros - Açai', 'PET', '2 Litros', 'Açai', 38.01);
 
 DELETE FROM tb_produto WHERE produto = '1078680';
 
 SELECT '1078680' FROM tb_produto;
 
 INSERT INTO tb_produto (produto, nome, embalagem, tamanho, sabor, preco_lista)
 VALUES ('1078680''1078680', 'Frescor do Verão - 470 ml - Manga', 'Garrafa', '470 ml', 'Manga', 5.18);
 
 Update tb_produto SET embalagem = 'garrafa' WHERE produto = '1078680';
 
 SELECT * FROM tb_produto where produto = '544931';

 SELECT * FROM tb_cliente where bairro = 'Jardim Ângela';
 
 SELECT * FROM tb_produto where sabor = 'Melância';
 
 Update tb_produto set sabor = 'Melancia Brasileira' where sabor = 'Melância';
 
 Select * from tb_produto;
 
 
 