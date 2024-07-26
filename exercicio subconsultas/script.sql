-- 1
select
	nome,
	idmunicipio
from 
	cliente
where
	idmunicipio = (select idmunicipio from cliente where nome = 'Manoel')
and
	idcliente <> 1;

-- 2
select
	data_pedido,
	valor
from
	pedido
where 
	valor < (select avg(valor) from pedido);

-- 3
select
	pdd.data_pedido,
	pdd.idcliente,
	cln.idcliente,
	vnd.idvendedor,
	(select sum(quantidade) from pedido_produto pdp where pdp.idpedido = pdd.idpedido) 
from 
	pedido as pdd
left outer join
	cliente as cln on pdd.idcliente = cln.idcliente
left outer join
 	vendedor as vnd on pdd.idvendedor = vnd.idvendedor
where
	(select sum(quantidade) from pedido_produto pdp where pdp.idpedido = pdd.idpedido) >= 2;
	
	
 


	

	


