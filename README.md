# desafio-sql-projeto-logico-db

Este é um projeto lógico de banco de dados para um sistema de e-commerce que visa fornecer uma estrutura de banco de dados para uma plataforma de compras online. O projeto contempla as seguintes narrativas:

Produto: Os produtos são vendidos por uma única plataforma online, mas podem ter vendedores distintos (terceiros). Cada produto possui um fornecedor, e um ou mais produtos podem compor um pedido.

Cliente: Os clientes podem se cadastrar no site usando CPF ou CNPJ. O endereço do cliente determina o valor do frete, e um cliente pode fazer mais de um pedido, sendo que existe um período de carência para devolução do produto.

Pedido: Os pedidos são criados por clientes e contêm informações de compra, endereço e status de entrega. Um pedido pode incluir um ou mais produtos, e é possível cancelá-lo.

Fornecedor & Estoque: Há uma relação entre fornecedores e produtos, e um estoque controla a quantidade de produtos disponíveis.

Este documento descreve o esquema lógico de banco de dados que reflete essas narrativas e fornece uma estrutura sólida para a gestão de produtos, clientes, pedidos, fornecedores e estoque em um ambiente de e-commerce.
