CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(50),
    tamanho VARCHAR(50),
    
    PRIMARY KEY(id)
);


CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
	nomePizza VARCHAR(100),
    ingredientes VARCHAR(100),
    borda VARCHAR(50),
    preco DECIMAL(5,2),
    
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id),
    
    PRIMARY KEY(id)
);
INSERT INTO tb_categorias(tipo, tamanho)
VALUES("Salgado", "Grande"),
("Doce", "Grande"),
("Doce", "Broto"),
("Salgado", "Broto"),
("Salgado", "Familia");

INSERT INTO tb_pizzas(nomePizza, ingredientes, borda, preco, categoria_id)
VALUES("Caipira", "Frango, milho, mussarela, molho de tomate", "Cheddar", 55.00, 1),  -- 1
("M&M's", "Chocolate ao leite, confeitos coloridos", "Chocolate Branco", 39.90, 2),  -- 2
("Banana show", "Chocolate branco, coberto com bananas fatiadas", "Chocolate ao leite", 27.90, 3),  -- 3
("Camarão", "Camarão refogado com alho, cebola, tomate, coberto com mussarela", "Quatro queijos", 70.00, 1),  -- 4
("Carne seca", "Carne seca refogada com ceboa, alho, tomate, coberto com mussarela", "Alho poró", 36.90, 4),  -- 5
("Francesa", "Peito de peru, champignon e catupiry", "Catupiry", 120.00, 5),  -- 6
("Jardineira", "Presunto, palmito, milho e mussarela", "Mussarela", 56.00, 1), -- 7
("Ouro Branco", "Ouro branco, chocolate ao leite, leite condensado e cereja", "Chocolate ao leite", 32.20, 3); -- 8

SELECT * FROM  tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nomePizza LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.tipo = "Doce";
