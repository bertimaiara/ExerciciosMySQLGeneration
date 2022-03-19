CREATE DATABASE db_funcionaries;

USE db_funcionaries;

CREATE TABLE tb_funcionaries(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cpf varchar(255) NOT NULL,
data_nascimento varchar(255) NOT NULL,
cargo varchar(255) NOT NULL, 
salario decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_funcionaries(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Sabrina",56754635499, "1994-04-10", "analista", 2000.00);
INSERT INTO tb_funcionaries(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Marcos",99948515900, "1984-05-19", "coordenador", 4000.00);
INSERT INTO tb_funcionaries(nome, cpf, data_nascimento, cargo, salario)
VALUES ("José",68422243876, "1994-06-02", "desenvolvedor back-end", 5000.00);
INSERT INTO tb_funcionaries(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Maria",55576258999, "1989-10-15", "desenvolvedor full stack", 6000.00);
INSERT INTO tb_funcionaries(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Camila",66644433300, "1996-09-17", "desenvolvedor front-end", 5000.00);

SELECT * FROM tb_funcionaries;

DELETE FROM tb_funcionaries WHERE id = 5 OR id=6;

SELECT * FROM tb_funcionaries WHERE nome  OR salario > 2000.00;

SELECT * FROM tb_funcionaries WHERE nome  OR salario < 2000.00;