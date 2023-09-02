use ecommerce_dio;

-- Populando as tabelas

-- Inserir 5 registros na tabela "fornecedor"
INSERT INTO fornecedores (nome_fornecedor, cnpj, endereco_fornecedor)
VALUES
    ('Fornecedor A', '1234567890123', 'Endereço A'),
    ('Fornecedor B', '5678901234567', 'Endereço B'),
    ('Fornecedor C', '9012345678123', 'Endereço C'),
    ('Fornecedor D', '3456789012345', 'Endereço D'),
    ('Fornecedor E', '7890123456123', 'Endereço E');

-- Inserir 5 registros na tabela "produtos"
INSERT INTO produtos (nome_produto, preco_produto, categoria_produto, descricao_produto, fk_fornecedor_id)
VALUES
    ('Produto 1', 10.50, 'Categoria A', 'Descrição do Produto 1', 1),
    ('Produto 2', 8.75, 'Categoria B', 'Descrição do Produto 2', 2),
    ('Produto 3', 15.00, 'Categoria A', 'Descrição do Produto 3', 3),
    ('Produto 4', 12.25, 'Categoria C', 'Descrição do Produto 4', 4),
    ('Produto 5', 20.00, 'Categoria B', 'Descrição do Produto 5', 5);

-- Inserir 5 registros na tabela "clientes"
INSERT INTO clientes (nome_cliente, cpf_cnpj, endereco_cliente, email_cliente)
VALUES
    ('Cliente A', '11111111111', 'Endereço A', 'clienteA@email.com'),
    ('Cliente B', '22222222222', 'Endereço B', 'clienteB@email.com'),
    ('Cliente C', '33333333333', 'Endereço C', 'clienteC@email.com'),
    ('Cliente D', '44444444444', 'Endereço D', 'clienteD@email.com'),
    ('Cliente E', '55555555555', 'Endereço E', 'clienteE@email.com');

-- Inserir 5 registros na tabela "estoque"
INSERT INTO estoque (quantidade_produto, data_entrada, preco_compra, fk_produto_id, fk_fornecedor_id)
VALUES
    (50, '2023-09-01', 10.00, 1, 1),
    (60, '2023-09-02', 9.50, 2, 2),
    (70, '2023-09-03', 11.00, 3, 3),
    (80, '2023-09-04', 12.50, 4, 4),
    (90, '2023-09-05', 14.00, 5, 5);

-- Inserir 5 registros na tabela "pedidos"
INSERT INTO pedidos (data_pedido, status_pedido, fk_cliente_id)
VALUES
    ('2023-09-01', 'Entregue', 1),
    ('2023-09-02', 'Enviado', 2),
    ('2023-09-03', 'Entregue', 3),
    ('2023-09-04', 'Enviado', 4),
    ('2023-09-05', 'Cancelado', 5);

-- Inserir 5 registros na tabela 'item_do_pedido'
INSERT INTO item_do_pedido (fk_pedido_id, fk_produto_id, quantidade, preco_unitario, preco_total)
VALUES
    (1, 1, 3, 10.50, 31.50),
    (2, 2, 2, 8.75, 17.50),
    (3, 3, 4, 15.00, 60.00),
    (4, 4, 1, 12.25, 12.25),
    (5, 5, 5, 20.00, 100.00);

    
    
    
    
    
    
    
    
    