-- exerc funções agregadas
--1
select idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 200;

--2
select idvendedor, sum(valor) from pedido group by idvendedor having sum (valor) > 1500;

--3 
select idvendedor, sum(valor) from pedido group by idvendedor;

--4
select count(idmunicipio) from municipio;

--5
select count (iduf) from municipio where iduf = 1 or iduf = 2;

--6
select iduf, count(idmunicipio) from municipio group by iduf

--7
select count(logradouro) from cliente where logradouro is not null;

--8
select idmunicipio, count(idcliente) from cliente group by idmunicipio;

--9
select count (idfornecedor) from fornecedor;

--10
select idfornecedor, count (idproduto)  from produto group by idfornecedor;

--11
select avg(valor), idfornecedor from produto group by idfornecedor;

--12 
select sum(valor) from produto;

--13
select max(nome), max(valor) from produto; 

--14
select min(nome), min(valor) from produto;

--15
select avg(valor) from produto;

--16
select count(idtransportadora) from transportadora;

--17
select avg(valor) from pedido;

--18
select idcliente, sum(valor) from pedido group by idcliente;

--19
select idvendedor, sum(valor) from pedido group by idvendedor;

--20
select idtransportadora, sum(valor) from pedido group by idtransportadora;

--21
select data_pedido, sum(valor) from pedido group by data_pedido;

--22
select idcliente, idtransportadora,idvendedor, sum(valor) from pedido group by idcliente, idtransportadora,idvendedor;

--23
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200;

--24
select avg(valor) from pedido where idvendedor = 1;

--25
select avg(valor) from pedido where idcliente  = 15;

--26
select count(idpedido) from pedido where idtransportadora = 1;

--27
select idvendedor, count(idpedido) from pedido group by idvendedor;

--28
select idcliente, count(idpedido) from pedido group by idcliente;

--29
select count(idpedido) from pedido where data_pedido between  '2008-04-15' and '2008-04-25';

--30
select count(idpedido) from pedido where valor > 1000;

--31
select idproduto, sum(valor_unitario) from pedido_produto where idproduto = 1 group by idproduto;

--32 
select idproduto, sum(valor_unitario) from pedido_produto  group by idproduto;

--33
select idpedido, sum(valor) from pedido group by idpedido;

--34
select idpedido, count(idproduto) from pedido_produto group by idpedido;

--35
select sum(valor_unitario) from pedido_produto;

--36
select idpedido, avg(valor_unitario) from pedido_produto where idpedido= 6 group by idpedido;

-- 37
select max(idproduto), max(valor_unitario) from pedido_produto;

-- 38
select min(idproduto), min(valor_unitario) from pedido_produto;

--39
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

--40
select sum(quantidade) from pedido_produto;


select * from produto
select * from pedido
select * from vendedor
select * from cliente
select * from transportadora
select * from pedido_produto
	













