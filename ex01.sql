CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    dataadmissao date,
    salario decimal,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, dataadmissao, salario)
VALUES ("Erick", "Desenvolvedor Jr", "2024-05-17", 5000.00),
("João", "Desenvolvedor Pl", "2022-05-17", 7500.00),
("Maria", "Coordenadora de TI", "2021-07-20", 12600.00),
("Kleber", "Desenvolvedor Sr", "2023-08-01", 9000.00),
("Ana", "Desenvolvedor Jr", "2024-05-17", 5000.00);

INSERT INTO tb_colaboradores(nome, cargo, dataadmissao, salario)
VALUES ("Tereza", "Estagiária", "2024-05-17", 1800.00);

SELECT nome, salario FROM tb_colaboradores WHERE salario > 2000;

SELECT nome, salario FROM tb_colaboradores WHERE salario < 2000;

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET salario = 5500 WHERE id = 1;

SELECT * FROM tb_colaboradores;