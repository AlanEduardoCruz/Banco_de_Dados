CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	ID BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Pizzas Salgadas', 'Variedade de pizzas com coberturas salgadas.'),
('Pizzas Doces', 'Deliciosas opções de pizzas com coberturas doces.'),
('Pizzas Especiais', 'Pizzas especiais com combinações únicas de ingredientes.'),
('Pizzas Vegetarianas', 'Opções vegetarianas de pizzas com coberturas saudáveis.'),
('Pizzas Veganas', 'Pizzas sem ingredientes de origem animal.');

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ingredientes TEXT,
preco DECIMAL(10,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id) VALUES
('Pizza de Pepperoni', 'Molho de tomate, queijo, pepperoni', 50.99, 1),
('Pizza Margherita', 'Molho de tomate, mussarela, manjericão fresco', 40.99, 1),
('Pizza de Frango com Catupiry', 'Molho de tomate, queijo, frango desfiado, catupiry', 14.99, 2),
('Pizza Calabresa', 'Molho de tomate, queijo, calabresa, cebola, pimentão', 70.99, 1),
('Pizza Portuguesa', 'Molho de tomate, queijo, presunto, ovo, cebola, azeitona, orégano', 59.99, 1),
('Pizza Vegetariana', 'Molho de tomate, queijo, brócolis, tomate, pimentão, cebola, champignon, azeitona', 33.99, 3),
('Pizza de Camarão', 'Molho de tomate, queijo, camarão, cebola, alho, pimentão, azeitona', 90.99, 2);


SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome AS categoria_nome 
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.nome AS categoria_nome 
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Pizzas Doces"








