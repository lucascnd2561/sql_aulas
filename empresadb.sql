-- 1. Criação do banco de dados
CREATE DATABASE EmpresaDB;
-- 2. selecionado o banco de dados para uso 
USE EmpresaDB;
-- 3. Criação da Tabela Funcionarios
CREATE TABLE Funcionarios (
id INT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
salario DECIMAL (10,2) NOT NULL,
data_admissao DATE 
);
-- 4. Criação da Tabela Departamentos
CREATE TABLE Departamentos (
id INT PRIMARY KEY,
nome VARCHAR (100) NOT NULL
);
-- 5. Adicionar uma Coluna na Tabela Funcionarios
-- para Armazenar o ID do Departamento
ALTER TABLE Funcionarios 
ADD departamento_id INT;

-- 6. Adicionado uma chave estrageira na tabela funcionarios
ALTER TABLE Funcionarios
ADD CONSTRAINT fk_departamento_funcioanrios
FOREIGN KEY (departamento_id)
REFERENCES Departamentos(id);

-- 7. Truncando a tabela Funcionarios para 
-- remover todos os registros (mas  não a estrutura)
TRUNCATE TABLE Funcionarios;

-- 8. Excluido a tabela Funcioanrios
DROP TABLE Funcionarios;

-- 9. Excluindo a tabela DepartamentoS
DROP TABLE Departamentos;

-- 10. Escluindo o banco de dados
DROP DATABASE EmpresaDB;


