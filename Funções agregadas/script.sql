-- funções agregadas
-- Para saber a media de valores:
select avg(valor) from pedido;
-- Contagem de registros:
select count(idmunicipio) from municipio;
-- contagem utilizando filtros
select count(idmunicipio) from municipio where iduf = 2;
-- maior valor
select max(valor) from pedido;
-- menor valor
select min (valor) from pedido;
-- somatorio
select sum (valor) from pedido;
-- agrupamento
select idcliente , sum(valor) from pedido group by idcliente;
-- filtros com agrupamento
select idcliente , sum(valor) from pedido group by idcliente having sum(valor) > 500;
