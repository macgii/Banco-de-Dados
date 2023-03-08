CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255),
    salario DECIMAL(7,2),
    cpf VARCHAR(15),
    cargo VARCHAR(50),
    
    PRIMARY KEY(id)
);

-- ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(7,2);
-- ALTER TABLE tb_colaboradores MODIFY cargo VARCHAR(50);

INSERT INTO tb_colaboradores(nome, salario,cpf,cargo)
VALUES ("Fabio", 3000.00, "765-981-236-42", "Desenvolvedor junior"),
("Pedro", 1200.00, "128-792-546-64", "Atendente"),
("Jaine", 1800.00, "523-545-921-54", "Mentora"),
("Wallace", 9000.00, "354-675-123-94", "Desenvolvedor Pleno"),
("Rafael", 1500.00, "533-564-657-34", "Desenvolvedor estagiario");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1999.99 WHERE id = 1;

-- Apaga banco de dados informado
-- DROP DATABASE bd_rh 


