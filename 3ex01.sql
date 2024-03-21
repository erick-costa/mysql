CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	sexo VARCHAR(10),
    poderataque INT,
    poderdefesa INT, 
    classesid BIGINT,
    PRIMARY KEY (id)
); 

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
	classe VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
); 

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classesid) REFERENCES tb_classes (id);

INSERT INTO tb_classes (classe)
VALUES ("arqueiro"), ("voador"), ("monstro"), ("armadura"), ("normal");

INSERT INTO tb_personagens (nome, sexo, poderataque, poderdefesa, classesid)
VALUES
    ('Superman', 'Masculino', 10000, 6000, 2),
    ('Homem de Ferro', 'Masculino', 5000, 2000, 4),
    ('Homem Aranha', 'Masculino', 3500, 2500, 3),
    ('Capitão América', 'Masculino', 7500, 4000, 5),
    ('Arqueiro Verde', 'Masculino', 5000, 1500, 1),
    ('Hulk', 'Masculino', 9500, 1500, 3),
    ('Mulher Invisível', 'Feminino', 2000, 4000, 5),
    ('Gamora', 'Feminino', 4000, 2000, 5);

SELECT nome, poderataque, poderdefesa FROM tb_personagens WHERE poderataque > 2000;

SELECT nome, poderataque, poderdefesa FROM tb_personagens WHERE poderataque >= 1000 AND poderataque <= 2000;

SELECT nome, poderataque, poderdefesa FROM tb_personagens WHERE nome LIKE "%c%" OR nome LIKE "%C%";

SELECT nome, poderataque, poderdefesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id;

SELECT nome, poderataque, poderdefesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id WHERE tb_personagens.classesid = 1;