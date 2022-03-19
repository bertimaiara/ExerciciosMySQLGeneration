CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int NOT NULL,
serie varchar(255) NOT NULL, 
nota decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, idade, serie, nota)
VALUES ("Gabriel", 10, "5º ano", 9.0);
INSERT INTO tb_alunos(nome, idade, serie, nota)
VALUES ("Lucas", 11, "6º ano", 8.5);
INSERT INTO tb_alunos(nome, idade, serie, nota)
VALUES ("Natan", 10, "5º ano", 7.0);
INSERT INTO tb_alunos(nome, idade, serie, nota)
VALUES ("Maria", 11, "6º ano", 8.0);
INSERT INTO tb_alunos(nome, idade, serie, nota)
VALUES ("Marcela", 13, "8º ano", 8.0);
INSERT INTO tb_alunos(nome, idade, serie, nota)
VALUES ("Marcos", 15, "9º ano", 7.0);
INSERT INTO tb_alunos(nome, idade, serie, nota)
VALUES ("Claudia", 14, "9º ano", 10.0);
INSERT INTO tb_alunos(nome, idade, serie, nota)
VALUES ("Roberto", 14, "9º ano", 10.0);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota > 7.00;
SELECT * FROM tb_alunos WHERE nota < 7.00;