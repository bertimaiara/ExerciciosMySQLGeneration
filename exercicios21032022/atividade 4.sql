CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(descricao)
VALUES ("Carnes");
INSERT INTO tb_categoria(descricao)
VALUES ("Aves");
INSERT INTO tb_categoria(descricao)
VALUES ("Suínos");

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
quantidade int, 
valor varchar(255) NOT NULL,
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("alcatra", "50", "60,00", 1);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("patinho", "60", "42,00", 1);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("miolo de acém", "35", "30,00", 1);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("coxa de frango", "50", "25,00", 2);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("sobrecoxa de frango", "50", "25,00", 2);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("coração de frango", "35", "20,00", 2);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("peito de frango", "70", "19,00", 2);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("bisteca", "40", "32,00", 3);

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor >= 3 AND valor<= 60;
SELECT * FROM tb_produto WHERE produto Like "%c%";

SELECT descricao, produto, quantidade, valor, categoria_id
FROM tb_produto INNER JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id;

SELECT descricao, produto, quantidade, valor, categoria_id
FROM tb_produto INNER JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.id = 2;