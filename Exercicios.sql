-- drop DATABASE bd_ex1;
CREATE DATABASE bd_ex1;

USE bd_ex1;



CREATE TABLE Professor (
    Cod_Professor INT NOT NULL PRIMARY KEY,
    Nome VARCHAR(150)
);

CREATE TABLE Curso (
    Cod_Curso INT NOT NULL PRIMARY KEY,
    Descricao VARCHAR(100) NOT NULL,
    Quant_Alunos INT NOT NULL,
    Cod_Professor INT NOT NULL,
    CONSTRAINT fk_Professor_Curso FOREIGN KEY (Cod_Professor)
        REFERENCES Professor (Cod_Professor)
);

CREATE TABLE Aluno(
	Matricula VARCHAR(10) NOT NULL PRIMARY KEY,
    Cod_Curso INT NOT NULL,
    Cod_Professor INT NOT NULL,
	Nome VARCHAR(150) NOT NULL,
    Data_de_Nascimento DATE NOT NULL,
    CONSTRAINT fk_Curso_Aluno FOREIGN KEY (Cod_Curso)
		REFERENCES Curso (Cod_Curso),
    CONSTRAINT fk_Professor_Aluno FOREIGN KEY (Cod_Professor)
		REFERENCES Professor (Cod_Professor)
);













