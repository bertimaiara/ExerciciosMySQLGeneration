CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(descricao)
VALUES ("antibiótico");
INSERT INTO tb_categorias(descricao)
VALUES ("anti-inflamatório");
INSERT INTO tb_categorias(descricao)
VALUES ("anti-alérgico");
INSERT INTO tb_categorias(descricao)
VALUES ("higiene");

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
valor varchar(255) NOT NULL,
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produto(nome, quantidade, valor, categorias_id)
VALUES ("amoxicilina", "10", "30,00", 1);
INSERT INTO tb_produto(nome, quantidade, valor, categorias_id)
VALUES ("nimesulida", "17", "15,00", 2);
INSERT INTO tb_produto(nome, quantidade, valor, categorias_id)
VALUES ("allegra", "20", "25,00", 3);
INSERT INTO tb_produto(nome, quantidade, valor, categorias_id)
VALUES ("shampoo", "30", "6,00", 4);
INSERT INTO tb_produto(nome, quantidade, valor, categorias_id)
VALUES ("sabonete", "25", "1,30", 4);
INSERT INTO tb_produto(nome, quantidade, valor, categorias_id)
VALUES ("desodorante", "40", "9,99", 4);
INSERT INTO tb_produto(nome, quantidade, valor, categorias_id)
VALUES ("polaramine", "35", "32,00", 3);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor >= 3 AND valor<= 60;
SELECT * FROM tb_produto WHERE produto Like "%b%";

SELECT descricao, nome, quantidade, valor, categorias_id
FROM tb_categorias INNER JOIN tb_produto 
ON tb_categorias.id = tb_produto.id;

SELECT descricao, nome, quantidade, valor, tb_categorias.descricao
FROM tb_categorias LEFT JOIN tb_produto 
ON tb_produto.categorias_id = tb_categorias.id
WHERE tb_categorias.descricao = "higiene";