
-- Criando o banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- selecionando o banco de dados
USE db_farmacia_bem_estar;

-- Criando a tabela categoria
CREATE TABLE tb_categorias(
id   BIGINT  AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
descricao TEXT,
PRIMARY KEY (id)
);

-- Criando a tabela de produtos
CREATE TABLE tb_produtos(
id  BIGINT  AUTO_INCREMENT,
nome VARCHAR (100) NOT NULL,
preco DECIMAL(10, 2) NOT NULL,
quantidade INT NOT NULL,
id_categoria BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)

);

-- Inserindo 5 registros na tabela de categorias

INSERT INTO tb_categorias (nome, descricao) VALUES
    ('Analgésicos', 'Medicamentos para alívio da dor.'),
    ('Anti-inflamatórios', 'Medicamentos para redução da inflamação.'),
    ('Antibióticos', 'Medicamentos para tratamento de infecções bacterianas.'),
    ('Vitaminas e Suplementos', 'Produtos para suplementação vitamínica e mineral.'),
    ('Dermocosméticos', 'Produtos cosméticos com propriedades dermatológicas.');



-- Inserindo 8 registros na tabela de produtos, relacionando-os com categorias existentes

INSERT INTO tb_produtos (nome, preco, quantidade, id_categoria) VALUES
    ('Dipirona 500mg', 10.99, 100, 1),
    ('Ibuprofeno 400mg', 12.50, 80, 1),
    ('Diclofenaco 50mg', 55.75, 60, 2),
    ('Amoxicilina 500mg', 20.00, 50, 3),
    ('Vitamina C 1000mg', 88.99, 120, 4),
    ('Multivitamínico', 58.50, 40, 4),
    ('Protetor Solar FPS 50', 25.99, 70, 5),
    ('Creme Hidratante Facial', 30.75, 55, 5);
    
    
-- Selecionando todos os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50;

-- Selecionando todos os produtos cujo valor esteja no intervalo entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60;

-- Selecionando todos os produtos que possuam a letra 'C' no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


-- Selecionando os produtos e suas respectivas categorias usando INNER JOIN
SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

-- Selecionando apenas os produtos que possuem categoria
SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;


