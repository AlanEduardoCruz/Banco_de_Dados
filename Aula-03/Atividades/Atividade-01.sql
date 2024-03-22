
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Criando a tabela de classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	descricao TEXT,
    tipo VARCHAR (100),
    PRIMARY KEY (id)
);

-- Inserindo dados na tabela de classes
INSERT INTO tb_classes (nome, tipo, descricao) VALUES
('Guerreiro', 'Melee', 'Personagens especializados em combate corpo a corpo.'),
('Mago', 'Ranged', 'Personagens que utilizam magias e habilidades místicas.'),
('Arqueiro', 'Ranged', 'Personagens especializados em ataques a distância.'),
('Curandeiro', 'Suporte', 'Personagens que oferecem suporte e cura.'),
('Ladrão', 'Melee', 'Personagens furtivos e especializados em ataques sorrateiros.');


-- Criando a tabela de personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    habilidades VARCHAR(255),
    classe_id BIGINT, 
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id) -- criando chave estrangeira
);

-- Inserir registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Lancelot', 30, 2500, 1800, 1),  
('Merlin', 35, 2200, 1600, 2),    
('Legolas', 28, 2300, 1500, 3),     
('Elrond', 32, 1800, 2000, 4),      
('Robin Hood', 26, 2100, 1200, 3),  
('Gandalf', 40, 2800, 2000, 2),    
('Aragorn', 33, 2600, 1900, 1),     
('Rogue', 29, 2000, 1300, 5);   

-- Realizando consultas
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- Realizando INNER JOIN entre as tabelas de personagens e classes
SELECT tb_personagens.*, tb_classes.nome AS classe_nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;


SELECT 
    tb_personagens.*, -- Seleciona todas as colunas da tabela tb_personagens
    tb_classes.nome AS classe_nome -- Seleciona a coluna nome da tabela tb_classes e a renomeia como classe_nome
FROM 
    tb_personagens -- Define a tabela principal da consulta como tb_personagens
INNER JOIN 
    tb_classes ON tb_personagens.classe_id = tb_classes.id -- Realiza uma junção interna entre tb_personagens e tb_classes, onde a classe do personagem é igual ao ID da classe
WHERE 
    tb_classes.nome = 'Arqueiro'; -- Filtra os resultados para incluir apenas os personagens da classe 'Arqueiro'



-- Selecionando todos os registros das tabelas de personagens e classes
SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;
