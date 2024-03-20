CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rh(
		id BIGINT AUTO_INCREMENT,
		nome VARCHAR(255) NOT NULL,
        cargo VARCHAR(255),
        data_admissao DATE,
        salario DECIMAL (10, 2),
        PRIMARY KEY (id)
);

INSERT INTO tb_rh(nome, cargo, data_admissao, salario)
VALUES("Renato", "Recrutador",  '2023-01-15', 3500),
("Carol", "Analista de RH",  '2023-03-24', 4500),
("Marcela", "Assistente administrativo",  '2023-07-20', 1500),
("Renam", "Auxiliar de RH",  '2023-01-18', 1500),
("Maria", "Recepcionista",  '2023-04-15', 1800);

SELECT nome, salario FROM tb_rh  WHERE salario > 2000;

SELECT nome, salario FROM tb_rh  WHERE salario < 2000;

SELECT *  FROM tb_rh;

UPDATE tb_rh SET salario = 1700 WHERE id = 3;


