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




