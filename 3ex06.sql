CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	horas INT,
    valor DECIMAL,
    nivel VARCHAR(15),
    categoriasid BIGINT,
    PRIMARY KEY (id)
); 

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
	categoria VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
); 

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias 
FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (categoria)
VALUES ("Finanças"), ("Marketing Digital"), ("Artenasato"), ("Programação"), ("Desenvolvimento Pessoal");

INSERT INTO tb_cursos (nome, horas, valor, nivel, categoriasid)
VALUES ("Dinheiro inteligente", 280, 297.00, "Iniciante", 1),
("Você Rico", 400, 997.00, "Intermediário", 1),
("Editor profissional", 285, 1497.00, "Avançado", 2),
("Social media estratégico", 470, 897.00, "Intermediário", 2),
("Cestas lucrativas", 170, 197.00, "Iniciante", 3),
("Python Avançado", 500, 997.00, "Avançado", 4),
("A chave da comunicação", 267, 397.00, "Intermediário", 5);

INSERT INTO tb_cursos (nome, horas, valor, nivel)
VALUES ("Java para iniciantes", 154, 497.00, "Iniciante");

SELECT nome, horas, valor, nivel FROM tb_cursos WHERE valor > 500.00;

SELECT nome, horas, valor, nivel FROM tb_cursos WHERE valor >= 600.00 AND valor <= 1000.00;

SELECT nome, horas, valor, nivel FROM tb_cursos WHERE nome LIKE "%j%";

SELECT nome, horas, valor, tb_categorias.categoria
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriasid = tb_categorias.id;

SELECT nome, horas, valor, tb_categorias.categoria
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriasid = tb_categorias.id WHERE tb_categorias.categoria = "Finanças";