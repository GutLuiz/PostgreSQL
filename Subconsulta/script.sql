-- Subconsulta : Quando você que retorne dados mais complexos e que uma unica consulta nâo consegue trazer todas as informações.
-- Exemplos:

-- 1- Selecionar a data do pediddo e o valor onde o valor seja maior que a media dos valores de todos os pedidos
-- Primeira consulta:
select 
	data_pedido,
	valor
from
	pedido
where
	valor > (select avg(valor) from pedido);

-- Exemplo com count
select
	pdd.data_pedido,
	pdd.valor,
	(select sum(quantidade) from pedido_produto pdp where pdp.idpedido = pdd.idpedido) as total
from
	pedido pdd

-- Exemplo com update
update pedido set valor = valor + ((valor * 5) /100)
where valor > (select avg(valor)from pedido);





