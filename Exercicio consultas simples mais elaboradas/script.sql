-- 1
select nome from Vendedor order by nome asc;

-- 2
select nome, valor from produto where valor > 200;

-- 3
select nome, valor, (valor * 1.10) as preço_reajustado from produto order by nome;

-- 4
select nome from municipio where iduf = 5;

-- 5
select idpedido, data_pedido, valor from pedido where data_pedido between '2008-04-10' and '2008-04-25' order by valor;

-- 6
select idpedido, valor from pedido where valor between 1000 and 1500;

-- 7
select idpedido, valor from pedido where valor not between 100 and 500;

-- 8
select idvendedor, valor from pedido where idvendedor = 1 order by valor desc;

-- 9
select idcliente, valor from pedido where idcliente = 12 order by valor asc;

-- 10
select idcliente, valor from pedido where idcliente = 15 and idvendedor = 1 order by valor;

-- 11
select idpedido from pedido where idtransportadora = 2;

-- 12
select idpedido from pedido where idvendedor = 5 or idvendedor = 7;

-- 13
select nome from cliente where idmunicipio = 1 or idmunicipio = 9;

-- 14
select nome from cliente where not  idmunicipio = 1 or idmunicipio = 9;

-- 15
select nome from cliente where logradouro is null;

-- 16
select * from cliente where logradouro like 'Av%';
-- 17
select nome from vendedor WHERE nome like 'S%';

-- 18
Select nome from vendedor where nome like 'A%';

-- 19
select nome from vendedor where nome not like 'A%';

-- 20
select nome from municipio where nome like 'P%' and iduf = 1;

-- 21
select * from transportadora where logradouro is not null;

-- 22
select idpedido, idproduto from pedido_produto where idpedido = 1;
select nome from produto where idproduto = 1 or idproduto = 2

-- 23
select * from pedido_produto where idpedido = 6 or idpedido = 10;
	
	







