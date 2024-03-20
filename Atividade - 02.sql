CREATE DATABASE db_ecommerce;


USE db_ecommerce;

CREATE TABLE tb_ecommerce (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL NOT NULL,
    quantidade_estoque INT NOT NULL,
    PRIMARY KEY (id)

);

INSERT INTO tb_ecommerce(nome, descricao, preco, quantidade_estoque )
VALUES ("Smartphone", "Celular de ultima geração", 1950.00, 15),
("Notbook", "Notbook de Accer ultima geração", 3500.00, 3),
("Fones de ouvido", "Fones de ouvido para celular", 90.00, 20),
("Câmeraa digital", "Câmera digital ultima geração", 350, 5),
("Bicicleta", "Bicicleta Aro 29", 450.00, 10),
("Geladeira", "Geladeira Brastemp", 3900.00, 20),
("Monitor", "Monitor Samsung", 750, 5),
("Relogio", "Relógio analógico", 150, 5);


SELECT * FROM tb_ecommerce;

SELECT nome, preco FROM tb_ecommerce WHERE preco > 500;

SELECT nome, preco FROM tb_ecommerce WHERE preco < 500;

ALTER TABLE tb_ecommerce MODIFY preco DECIMAL(10, 2);

UPDATE tb_ecommerce SET quantidade_estoque = 100 WHERE id  = 4;
