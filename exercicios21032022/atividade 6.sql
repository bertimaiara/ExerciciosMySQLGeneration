CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(descricao)
VALUES ("Graduação");
INSERT INTO tb_categoria(descricao)
VALUES ("Pós-graduação");
INSERT INTO tb_categoria(descricao)
VALUES ("Mestrado");

CREATE TABLE tb_curso(
id bigint AUTO_INCREMENT,
curso varchar(255) NOT NULL,
modalidade varchar(255) NOT NULL, 
valor varchar(255) NOT NULL,
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_curso(curso, modalidade, valor, categoria_id)
VALUES ("Administração", "Híbrido", "350,00/mês", 1);
INSERT INTO tb_curso(curso, modalidade, valor, categoria_id)
VALUES ("Contabilidade", "EAD", "220,00/mês", 1);
INSERT INTO tb_curso(curso, modalidade, valor, categoria_id)
VALUES ("Letras - Português/Inglês", "Presencial", "470,00/mês", 1);
INSERT INTO tb_curso(curso, modalidade, valor, categoria_id)
VALUES ("Gestão de Pessoas", "Semipresencial", "400,00/mês", 2);
INSERT INTO tb_curso(curso, modalidade, valor, categoria_id)
VALUES ("Gestão da Qualidade", "EAD", "360,00/mês", 2);
INSERT INTO tb_curso(curso, modalidade, valor, categoria_id)
VALUES ("Gestão de Vendas", "Híbrido", "450,00/mês", 2);
INSERT INTO tb_curso(curso, modalidade, valor, categoria_id)
VALUES ("Arquitetura e Urbanismo", "Presencial", "600,00/mês", 3);
INSERT INTO tb_curso(curso, modalidade, valor, categoria_id)
VALUES ("Computação Aplicada", "Híbrido", "750,00/mês", 3);

SELECT * FROM tb_categoria;
SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE valor > 50;
SELECT * FROM tb_curso WHERE valor >= 3 AND valor<= 60;
SELECT * FROM tb_curso WHERE curso Like "%j%";

SELECT descricao, curso, modalidade, valor, categoria_id
FROM tb_curso INNER JOIN tb_categoria 
ON tb_curso.categoria_id = tb_categoria.id;

SELECT descricao, curso, modalidade, valor, categoria_id
FROM tb_curso INNER JOIN tb_categoria 
ON tb_curso.categoria_id = tb_categoria.id
WHERE tb_categoria.id = 1;