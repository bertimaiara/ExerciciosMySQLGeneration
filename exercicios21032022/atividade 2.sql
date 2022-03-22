CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(descricao)
VALUES ("Pequena");
INSERT INTO tb_categoria(descricao)
VALUES ("Média");
INSERT INTO tb_categoria(descricao)
VALUES ("Grande");

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
bordaRecheada varchar(255) NOT NULL,
cobertura varchar(255) NOT NULL,
ingredientesAdicionais varchar(255) NOT NULL,
valor varchar(255) NOT NULL,
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza(sabor, bordaRecheada, cobertura, ingredientesAdicionais, valor, categoria_id)
VALUES ("frango", "não", "milho", "sem adicional", "50,00", 1);
INSERT INTO tb_pizza(sabor, bordaRecheada, cobertura, ingredientesAdicionais, valor, categoria_id)
VALUES ("dois queijos", "sim", "sem cobertura", "sem adicional", "55,00", 2);
INSERT INTO tb_pizza(sabor, bordaRecheada, cobertura, ingredientesAdicionais, valor, categoria_id)
VALUES ("peperoni", "sim", "catupiry", "alho frito", "45,00", 3);
INSERT INTO tb_pizza(sabor, bordaRecheada, cobertura, ingredientesAdicionais, valor, categoria_id)
VALUES ("marguerita", "não", "cheddar", "tomate seco", "60,00", 2);

SELECT * FROM tb_categoria;
SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE valor > 45;
SELECT * FROM tb_pizza WHERE valor >= 29 AND valor <= 60;
SELECT * FROM tb_produto WHERE nome Like "%c%";

SELECT descricao, sabor, bordaRecheada, cobertura, ingredientesAdicionais, valor,
categoria_id
FROM tb_categoria INNER JOIN tb_pizza 
ON tb_categoria.id = tb_pizza.id;

SELECT sabor, bordaRecheada, cobertura, ingredientesAdicionais,
valor, categoria_id
FROM tb_pizza LEFT JOIN tb_categoria 
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.id = 2;