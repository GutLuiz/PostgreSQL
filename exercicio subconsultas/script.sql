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
	
-- 4
select
	nome,
	idmunicipio
from
	cliente
where
	idmunicipio = (select idmunicipio from transportadora where idtransportadora = 1); 
	
-- 5
select
	cln.nome,
	mnc.nome as municipio
from
	cliente as cln
left outer join
	municipio as mnc on cln.idmunicipio = mnc.idmunicipio
where
	mnc.idmunicipio in (select idmunicipio from transportadora where idtransportadora = 1 or idtransportadora = 2) --O in é usado para quando ter mais opções
		
-- 6
update
	pedido
set
	valor = valor +((valor * 5)/100)
where
	(select sum (pdp.valor_unitario) from pedido_produto pdp where pdp.idpedido = idpedido) > (select avg(valor_unitario) from pedido_produto)
	

-- 7
select
	cln.nome,
	count(pdd.idpedido)
from
	pedido as pdd
left outer join
	cliente as cln on pdd.idcliente = cln.idcliente
group by
	cln.nome

--ou
	
select
	cln.nome,
	(select count(idpedido) from pedido pdd where pdd.idcliente = cln.idcliente) as total
from
	cliente as cln
	
	




	

	


	

	


