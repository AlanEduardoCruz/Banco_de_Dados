CREATE DATABASE db_estudantes;


USE db_estudantes;



CREATE TABLE tb_estudantes (
	id 	BIGINT AUTO_INCREMENT,
		nome VARCHAR(255) NOT NULL,
        serie_anual VARCHAR(50),
        endereco VARCHAR(50),
		nota DECIMAL (5, 2) NOT NULL,
        PRIMARY KEY (id)

);

  INSERT INTO tb_estudantes(nome, serie_anual, endereco, nota)
  VALUES("Alex" , "Terceiro ano", "Rua A", 10),
  ("Alexandre" , "Quarto ano", "Rua B", 6),
  ("Aline" , "Primeiro ano", "Rua C", 7),
  ("Jessica" , "Terceiro ano", "Rua D", 9),
  ("Carol" , "Segundo ano", "Rua E", 5),
  ("Renato" , "Sexto ano", "Rua F", 4),
  ("Ale" , "Quinto ano", "Rua G", 8),
  ("Ronaldo" , "Terceiro ano", "Rua H", 6);
  
  SELECT  * FROM tb_estudantes;
  
  SELECT  nome, nota FROM tb_estudantes WHERE nota > 7.0; 
  
  SELECT  nome, nota FROM tb_estudantes WHERE nota < 7.0;
  
  UPDATE tb_estudantes SET nota = 10 WHERE id = 7;
  
  
  
  
 
  
  