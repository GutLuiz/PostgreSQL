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




