CREATE DATABASE loja;
USE loja;

CREATE TABLE vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    vendedor VARCHAR(100),
    valor DECIMAL(10,2),
    data_venda DATE
);

INSERT INTO vendas (vendedor, valor, data_venda) VALUES
('Lucas Verissimo', 150.50, '2025-01-01'),
('Maria Oliveira', 320.75, '2025-01-02'),
('João Silva', 890.00, '2025-01-03'),
('Ana Souza', 450.25, '2025-01-04'),
('Pedro Santos', 1200.00, '2025-01-05'),
('Juliana Costa', 780.90, '2025-01-06'),
('Carlos Ferreira', 95.50, '2025-01-07'),
('Fernanda Lima', 670.00, '2025-01-08'),
('Rafael Almeida', 330.40, '2025-01-09'),
('Camila Rocha', 2100.00, '2025-01-10'),
('Bruno Martins', 550.80, '2025-01-11'),
('Larissa Gomes', 180.00, '2025-01-12'),
('Thiago Ribeiro', 750.25, '2025-01-13'),
('Patricia Carvalho', 990.90, '2025-01-14'),
('Gabriel Barbosa', 430.50, '2025-01-15'),
('Amanda Melo', 1600.00, '2025-01-16'),
('Felipe Araujo', 275.30, '2025-01-17'),
('Beatriz Teixeira', 845.60, '2025-01-18'),
('Leonardo Correia', 510.00, '2025-01-19'),
('Isabela Nunes', 1290.75, '2025-01-20'),
('Lucas Verissimo', 315.20, '2025-01-21'),
('Maria Oliveira', 725.00, '2025-01-22'),
('João Silva', 430.10, '2025-01-23'),
('Ana Souza', 880.00, '2025-01-24'),
('Pedro Santos', 150.00, '2025-01-25'),
('Juliana Costa', 940.50, '2025-01-26'),
('Carlos Ferreira', 1120.80, '2025-01-27'),
('Fernanda Lima', 210.40, '2025-01-28'),
('Rafael Almeida', 675.00, '2025-01-29'),
('Camila Rocha', 1890.20, '2025-01-30'),
('Bruno Martins', 520.00, '2025-02-01'),
('Larissa Gomes', 340.90, '2025-02-02'),
('Thiago Ribeiro', 990.00, '2025-02-03'),
('Patricia Carvalho', 120.50, '2025-02-04'),
('Gabriel Barbosa', 640.80, '2025-02-05'),
('Amanda Melo', 1780.00, '2025-02-06'),
('Felipe Araujo', 450.00, '2025-02-07'),
('Beatriz Teixeira', 380.25, '2025-02-08'),
('Leonardo Correia', 730.60, '2025-02-09'),
('Isabela Nunes', 2500.00, '2025-02-10'),
('Lucas Verissimo', 890.75, '2025-02-11'),
('Maria Oliveira', 215.00, '2025-02-12'),
('João Silva', 460.30, '2025-02-13'),
('Ana Souza', 1300.00, '2025-02-14'),
('Pedro Santos', 570.50, '2025-02-15'),
('Juliana Costa', 620.00, '2025-02-16'),
('Carlos Ferreira', 980.40, '2025-02-17'),
('Fernanda Lima', 1450.00, '2025-02-18'),
('Rafael Almeida', 390.90, '2025-02-19'),
('Camila Rocha', 810.25, '2025-02-20');
 
 SELECT *FROM vendas;
 
SELECT COUNT(*) AS total_vendido
FROM vendas;

SELECT SUM(valor) AS total_vendido
FROM vendas;

SELECT vendedor, SUM(valor) AS total_vendido
FROM vendas
GROUP BY vendedor
ORDER BY total_vendido DESC;


SELECT vendedor, COUNT(*) AS quantidade_vendas
FROM vendas
GROUP BY vendedor
ORDER BY quantidade_vendas DESC;


SELECT *from vendas
where valor <=900;

SELECT * 
FROM vendas
where vendedor='lucas verissimo';

SELECT *
FROM vendas 
where valor between 500 AND 1000;


SELECT *
FROM vendas 
where data_venda between '2025-02-01' AND '2025-02-09';


SELECT *
FROM vendas 
where valor NOT between 500 AND 1000;	

SELECT *
FROM vendas
where vendedor LIKE '%verissimo%';

SELECT *
FROM vendas
WHERE vendedor LIKE '_a%';

SELECT *
FROM vendas
where vendedor LIKE 'L_____%';

SELECT * 
FROM vendas
where vendedor LIKE '% silva';


SELECT *
FROM vendas
where vendedor LIKE '%rocha%';
