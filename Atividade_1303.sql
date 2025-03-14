CREATE DATABASE supermercado_pascotto;

USE supermercado_pascotto;

CREATE TABLE produtos(
	id INT PRIMARY KEY,
    cod_barras INT,
    nome VARCHAR(255),
    marca VARCHAR(255),
    data_validade DATE,
    fornecedor VARCHAR(255),
    quantidade INT,
    preco_unit DECIMAL(10, 2)
);

INSERT INTO produtos (id, cod_barras, nome, marca, data_validade, fornecedor, quantidade, preco_unit) VALUES
(1, 1234, 'Arroz', 'Camil', 2026-01-01, 'Alimentos LTDA', 90, 25.99);
SELECT * FROM produtos;
UPDATE produtos
SET data_validade = 20260101
WHERE id = 1;
SELECT * FROM produtos;


CREATE TABLE fornecedore(
	id INT PRIMARY KEY,
    cnpj INT,
    nome VARCHAR(255),
    endereco_rua VARCHAR(255),
    endereco_numero INT,
    endereco_bairro VARCHAR(255),
    telefone INT,
    email VARCHAR(255)
    );
    
INSERT INTO fornecedore (id, cnpj, nome, endereco_rua, endereco_numero, endereco_bairro, telefone, email) VALUES
(10, 01222333000144, 'Alimentos LTDA', 'Av. Paulista', 400, 'Bela Vista', 1155558888, 'contato@alimentos.com.br');
SELECT*FROM fornecedore;

CREATE TABLE funcionarios(
	id INT PRIMARY KEY,
    cpf INT,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    email VARCHAR(255),
    matricula INT,
    telefone INT,
    salario DECIMAL(10, 2)
);

INSERT INTO funcionarios (id, cpf, nome, cargo, email, matricula, telefone, salario) VALUES
(100, 01122233344, 'Fulano Santos Silva', 'Operador de caixa', 'fulano123@gmail.com', '1234567', 11911112222, 1400.00);
SELECT*FROM funcionarios;
UPDATE funcionarios
SET telefone = 911112222
WHERE id = 100;
SELECT*FROM funcionarios;

    
    
