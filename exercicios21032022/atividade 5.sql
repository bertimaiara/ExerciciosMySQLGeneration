CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(descricao)
VALUES ("Tintas");
INSERT INTO tb_categoria(descricao)
VALUES ("Ferramentas");
INSERT INTO tb_categoria(descricao)
VALUES ("Limpeza da casa");

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
VALUES ("Azul claro", "150", "130,00", 1);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("Amarelo girassol", "200", "135,00", 1);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("Branco acrílico fosco", "50", "110,00", 1);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("Furadeira 220W", "50", "200,00", 2);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("Lixadeira 110W", "70", "150,00", 2);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("Vassoura", "240", "25,00", 3);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("Sekito", "350", "160,00", 3);
INSERT INTO tb_produto(produto, quantidade, valor, categoria_id)
VALUES ("Pano de chão xadrez", "500", "3,00", 3);

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
WHERE tb_categoria.id = 3;