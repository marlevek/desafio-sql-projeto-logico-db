
-- CRIAR BD ECOMMERCE_DIO
CREATE DATABASE ecommerce_dio;
USE ecommerce_dio;

-- CRIANDO AS TABELAS

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    nome_cliente VARCHAR(255),
    cpf_cnpj VARCHAR(14),
    endereco_cliente VARCHAR(255),
    email_cliente varchar(100)    
);

CREATE TABLE pedidos(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    data_pedido DATE,
    status_pedido ENUM('Enviado', 'Entregue', 'Cancelado'),
    fk_cliente_id INT,
    FOREIGN KEY (fk_cliente_id) REFERENCES clientes(id_cliente)
);

CREATE TABLE fornecedores(
	id_fornecedor INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    nome_fornecedor VARCHAR(255) NOT NULL,
    endereco_fornecedor VARCHAR(255),   
    cnpj CHAR(13) UNIQUE NOT NULL
);

CREATE TABLE produtos(
	id_produto INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    nome_produto VARCHAR(255),
    preco_produto DECIMAL(10, 2) NOT NULL,
    categoria_produto VARCHAR(15) NOT NULL,
    descricao_produto TEXT,
    fk_fornecedor_id INT,
    FOREIGN KEY (fk_fornecedor_id) REFERENCES fornecedores(id_fornecedor)    
);

CREATE TABLE estoque(
	id_estoque INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    quantidade_produto INT NOT NULL,
    data_entrada DATE NOT NULL,
    preco_compra DECIMAL(10, 2) NOT NULL,
    fk_produto_id INT,
    FOREIGN KEY(fk_produto_id) REFERENCES produtos(id_produto),
    fk_fornecedor_id INT,
    FOREIGN KEY(fk_fornecedor_id) REFERENCES fornecedores(id_fornecedor)
);

CREATE TABLE item_do_pedido (
    id_item_pedido INT PRIMARY KEY AUTO_INCREMENT,
    fk_pedido_id INT NOT NULL,
    fk_produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    preco_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (fk_pedido_id) REFERENCES pedidos (id_pedido),
    FOREIGN KEY (fk_produto_id) REFERENCES produtos (id_produto)
);










