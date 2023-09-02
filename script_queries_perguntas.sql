# Perguntas para realizar queries no BD ecommerce_dio


# CLÁUSULAS SELECT, INNER JOIN
-- 1. Quais são os nomes de todos os produtos em estoque?
SELECT nome_produto
FROM produtos
WHERE id_produto in (SELECT fk_produto_id FROM estoque);

-- 2. Qual é o lucro total de um produto?
SELECT nome_produto, (preco_produto - preco_compra) AS lucro_total
FROM produtos
INNER JOIN estoque ON produtos.id_produto = estoque.fk_produto_id;

# CLÁUSULA WHERE
-- 1. Quais produtos têm um preço superior a $50?
SELECT nome_produto
FROM produtos
WHERE preco_produto > 50.0;

-- 2. Quais clientes têm um CPF que começa com "1"?
SELECT nome_cliente
FROM clientes
WHERE cpf_cnpj LIKE '1%';

-- 3. Quais pedidos foram feitos após a data "2023-08-01"?
SELECT id_pedido
FROM pedidos
WHERE data_pedido > '2023-08-01';

# Defina ordenações dos dados com ORDER BY:
-- 1. Liste todos os produtos em estoque em ordem alfabética de seus nomes.
SELECT nome_produto
FROM produtos
INNER JOIN estoque ON produtos.id_produto = estoque.fk_produto_id
ORDER BY nome_produto;

-- 2. Quais produtos têm os preços mais altos? Ordene por preço em ordem decrescent
SELECT nome_produto, preco_produto
FROM produtos
ORDER BY preco_produto DESC;

# Condições de filtros aos grupos – HAVING e GROUP BY:
-- 1. Liste todos os produtos em estoque em ordem alfabética de seus nomes.
SELECT p.nome_produto
FROM produtos AS p
INNER JOIN estoque AS e ON p.id_produto = e.fk_produto_id
GROUP BY p.nome_produto
HAVING count(*) > 0
ORDER BY p.nome_produto;

-- 2. Quais clientes fizeram pedidos mais recentemente? Ordene por data do pedido em ordem decrescente.
SELECT c.nome_cliente, MAX(p.data_pedido) AS data_mais_recente
FROM clientes AS c
INNER JOIN pedidos AS p ON c.id_cliente = p.fk_cliente_id
GROUP BY c.nome_cliente
HAVING data_mais_recente IS NOT NULL
ORDER BY data_mais_recente DESC;

-- 3. Quais produtos têm os preços mais altos? Ordene por preço em ordem decrescente.
SELECT nome_produto, MAX(preco_produto) AS maior_preco
FROM produtos
GROUP BY nome_produto
HAVING maior_preco IS NOT NULL
ORDER BY maior_preco DESC;

# Crie expressões para gerar atributos derivados:
-- 1. Qual é o valor total de um pedido (preço do produto multiplicado pela quantidade) para cada pedido?
SELECT p.id_pedido,
       SUM(ip.quantidade * pr.preco_produto) AS valor_total_pedido
FROM pedidos AS p
INNER JOIN item_do_pedido AS ip ON p.id_pedido = ip.fk_pedido_id
INNER JOIN produtos AS pr ON ip.fk_produto_id = pr.id_produto
INNER JOIN fornecedores AS f ON pr.fk_fornecedor_id = f.id_fornecedor
GROUP BY p.id_pedido;

-- 2. Qual é o lucro total de um produto (preço de venda - preço de compra)?
SELECT
	p.id_produto,
    p.nome_produto,
    p.preco_produto,
    e.preco_compra,
    (p.preco_produto - e.preco_compra) AS lucro_total
FROM
	produtos AS p
INNER JOIN
	estoque AS e ON p.id_produto = e.fk_produto_id;




