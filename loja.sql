CREATE DATABASE db_loja;
USE db_loja;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
quantidade int NOT NULL,
pronta_entrega varchar(255) NOT NULL, 
valor decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, descricao, quantidade, pronta_entrega, valor)
VALUES ("212 Sexy", "feminino 100ml", 10, "sim", 600.00);
INSERT INTO tb_produtos(produto, descricao, quantidade, pronta_entrega, valor)
VALUES ("Good Girl", "feminino 100ml", 15, "sim", 700.00);
INSERT INTO tb_produtos(produto, descricao, quantidade, pronta_entrega, valor)
VALUES ("Scandal", "feminino 100ml", 17, "sim", 509.00);
INSERT INTO tb_produtos(produto, descricao, quantidade, pronta_entrega, valor)
VALUES ("Eternity", "feminino 100ml", 5, "sim", 499.00);
INSERT INTO tb_produtos(produto, descricao, quantidade, pronta_entrega, valor)
VALUES ("Calvin Klein", "masculino 100ml", 5, "sim", 369.00);
INSERT INTO tb_produtos(produto, descricao, quantidade, pronta_entrega, valor)
VALUES ("Antonio Banderas", "masculino 50ml", 20, "sim", 169.00);
INSERT INTO tb_produtos(produto, descricao, quantidade, pronta_entrega, valor)
VALUES ("Man - Mercedes Benz", "masculino 100ml", 12, "sim", 359.00);
INSERT INTO tb_produtos(produto, descricao, quantidade, pronta_entrega, valor)
VALUES ("One Milion", "masculino 100ml", 8, "sim", 359.00);

SELECT * FROM tb_produtos WHERE valor > 500.00;
SELECT * FROM tb_produtos WHERE valor < 500.00;
SELECT * FROM tb_produtos;
