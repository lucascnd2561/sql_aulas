drop database BDVendas;
-- -----------------------------------------------------
-- Schema BDVendas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BDVendas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BDVendas` DEFAULT CHARACTER SET utf8 ;
USE `BDVendas` ;

-- -----------------------------------------------------
-- Table `BDVendas`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDVendas`.`produto` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL,
  `tipo_produto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDVendas`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDVendas`.`cliente` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `documento` VARCHAR(20) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `ddd` CHAR(2) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `data_cadastro` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDVendas`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDVendas`.`venda` (
  `id` INT NOT NULL,
  `cliente_id` INT NOT NULL,
  `data_venda` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
 
  CONSTRAINT `fk_cliente_venda`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `BDVendas`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDVendas`.`produto_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDVendas`.`produto_venda` (
  `id` INT NOT NULL,
  `venda_id` INT NOT NULL,
  `produto_id` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `valor` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`),
 
  CONSTRAINT `fk_produto_produto_venda`
    FOREIGN KEY (`produto_id`)
    REFERENCES `BDVendas`.`produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venda_produto_venda`
    FOREIGN KEY (`venda_id`)
    REFERENCES `BDVendas`.`venda` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




INSERT INTO `Cliente`(`id`,`nome`,`documento`,`email`,`ddd`,`telefone`,`data_cadastro`)
VALUES('211','Allana Lívia Sarah Baptista','335.518.648-10','allana-baptista76@sistectecnologia.com.br','11','2662-3001','2024-09-12');

INSERT INTO `Cliente`(`id`,`nome`,`documento`,`email`,`ddd`,`telefone`,`data_cadastro`)
VALUES('213','Samuel Antonio Luan Porto', '552.202.248-59','samuel-porto79@kimmay.com.br','11','2688-9659','2024-09-10');

INSERT INTO `Cliente`(`id`,`nome`,`documento`,`email`,`ddd`,`telefone`,`data_cadastro`)
VALUES('212','Lara Heloisa Araújo','855.949.848-60','lara_heloisa_araujo@live.com.pt','11','3625-5680,','2024-09-20');

INSERT INTO `Cliente`(`id`,`nome`,`documento`,`email`,`ddd`,`telefone`,`data_cadastro`)
VALUES('214','Emilly Isabel Esther da Cruz','571.441.028-93', 'emillyisabeldacruz@vitaonline.com.br', '11','3552-9228','2024-09-22');

INSERT INTO `Cliente`(`id`,`nome`,`documento`,`email`,`ddd`,`telefone`,`data_cadastro`)
VALUES('215','Theo Fábio Matheus Figueiredo','780.745.978-65','theo_fabio_figueiredo@selaz.com.br','11','2691-1059','2024-09-28');


INSERT INTO `produto`(`id`,`nome`,`preco`,`tipo_produto`)
VALUES('9','Fone de Ouvido Bluetooth','199.90','Eletrônico');

INSERT INTO `produto`(`id`,`nome`,`preco`,`tipo_produto`)
VALUES('8','Cadeira Gamer', 899.00, 'Móveis');

INSERT INTO `produto`(`id`,`nome`,`preco`,`tipo_produto`)
VALUES('7','Cadeira Gamer','899.00' 'Móveis');

INSERT INTO `produto`(`id`,`nome`,`preco`,`tipo_produto`)
VALUES('5','Mochila de Notebook', 129.90, 'Acessórios');

INSERT INTO `produto`(`id`,`nome`,`preco`,`tipo_produto`)
VALUES('6','Óculos de Sol Polarizado', 169.90, 'Moda');


INSERT INTO `produto_venda`(`id`,`venda_id`,`produto_id`,`quantidade`,`valor`)
VALUES('1', '1001', '9', '2', '399.80');

INSERT INTO `produto_venda`(`id`,`venda_id`,`produto_id`,`quantidade`,`valor`)
VALUES('2', '1002', '8', '1', '899.00');

INSERT INTO `produto_venda`(`id`,`venda_id`,`produto_id`,`quantidade`,`valor`)
VALUES('3', '1003', '7', '3', '7497.00');

INSERT INTO `produto_venda`(`id`,`venda_id`,`produto_id`,`quantidade`,`valor`)
VALUES('4', '1004', '5', '1','129.90');

INSERT INTO `produto_venda`(`id`,`venda_id`,`produto_id`,`quantidade`,`valor`)
VALUES('5', '1005', '6', '4', '679.60');


INSERT INTO `venda`(`id`,`cliente_id`,`data_venda`)
VALUES('1001', '1', '2024-05-15');

INSERT INTO `venda`(`id`,`cliente_id`,`data_venda`)
VALUES('1002', '2', '2024-05-16');

INSERT INTO `venda`(`id`,`cliente_id`,`data_venda`)
VALUES('1003', '3', '2024-05-17');

INSERT INTO `venda`(`id`,`cliente_id`,`data_venda`)
VALUES('1004', '4', '2024-05-18');

INSERT INTO `venda`(`id`,`cliente_id`,`data_venda`)
VALUES('1005', '5', '2024-05-19');



