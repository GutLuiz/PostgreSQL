-- 1
select 
	cln.nome as clinte,
	prf.nome as profissao,
	ncl.nome as nacionalidade,
	cln.logradouro,
	cln.numero, 
	cpl.nome as complemento,
	brr.nome as bairro,
	mnc.nome as municipio,
	uf.nome as estado,
	uf.sigla as sigla
from 
	cliente as cln 
left outer join 
	profissao as prf on cln.idprofissao = prf.idprofissao
left outer join 
	nacionalidade as ncl on cln.idnacionalidade = ncl.idnacionalidade
left outer join
	complemento as cpl on cln.idcomplemento = cpl.idcomplemento
left outer join 
	bairro as brr on cln.idbairro = brr.idbairro
left outer join 
	municipio as mnc on cln.idmunicipio = mnc.idmunicipio
left outer join 
	uf on mnc.iduf = uf.iduf

-- 2
select
 	pdt.nome as nome,
 	pdt.valor as valor,
 	fnd.nome as fornecedor
from 
	produto as pdt
left outer join
	fornecedor as fnd on pdt.idfornecedor = fnd.idfornecedor;

-- 3
select
	tpt.nome,
	mnc.nome as municipio
from 
	transportadora as tpt
left outer join
	municipio as mnc on tpt.idmunicipio = mnc.idmunicipio;

-- 4
select
	pdd.data_pedido,
	pdd.valor,
	cln.nome as cliente,
	tpt.nome as transportadora,
	vnd.nome as vendedor
from 
	pedido as pdd
left outer join
	cliente as cln on pdd.idcliente = cln.idcliente
left outer join
	transportadora as tpt on pdd.idtransportadora = tpt.idtransportadora
left outer join 
	vendedor as vnd on pdd.idvendedor = vnd.idvendedor;

-- 5
select 
	pdt.nome as Produto,
	pdtpdd.quantidade,
	pdtpdd.valor_unitario as valor
from
	pedido_produto as pdtpdd
left outer join
	produto as pdt on pdtpdd.idproduto = pdt.idproduto;

--6
select
	cln.nome as nome,
	pdd.data_pedido
from
	cliente as cln
inner join 
	pedido as pdd on cln.idcliente = pdd.idcliente
order by
	cln.nome;

-- 7 
select
	cln.nome as nome,
	pdd.data_pedido
from
	cliente as cln
left outer join 
	pedido as pdd on cln.idcliente = pdd.idcliente
order by
	cln.nome;

-- 8
select
	mnc.nome as Cidade,
	count(cln.nome) as quantidade_clientes
from 
	cliente as cln
left outer join 
	municipio as mnc on cln.idmunicipio = mnc.idmunicipio
group by
	mnc.nome;

-- 9
select
	fnd.nome as fornecedor,
	count(prd.nome) as quantidade_produtos
from 
	produto as prd
left outer join
	fornecedor as fnd on prd.idfornecedor = fnd.idfornecedor
group by 
	fnd.nome;

-- 10
select
	cln.nome as nome,
	sum(pdd.valor) as valor_total
from 
	pedido as pdd
left outer join
	cliente as cln on pdd.idcliente = cln.idcliente
group by
	cln.nome;

-- 11
select
	vdd.nome as nome,
	sum(pdd.valor) as valor_total
from 
	pedido as pdd
left outer join
	vendedor as vdd on pdd.idvendedor = vdd.idvendedor
group by
	vdd.nome;

-- 12
select
	tpt.nome as nome,
	sum(pdd.valor) as valor_total
from 
	pedido as pdd
inner join
	transportadora as tpt on pdd.idtransportadora = tpt.idtransportadora
group by
	tpt.nome;

-- 13
select 
	cln.nome as nome,
	count(pdd.idpedido) as quantidade_pedidos
from 
	pedido as pdd
left outer join
	cliente as cln on pdd.idcliente = cln.idcliente
group by
	cln.nome;

-- 14
select 
	prd.nome as produto,
	count(prdpdd.quantidade) as quantidade
from 
	pedido_produto as prdpdd
left outer join
	produto as prd on prdpdd.idproduto = prd.idproduto
group by
	prd.nome;

-- 15
select
	pdd.data_pedido,
	sum(pdp.valor_unitario) as total
from
	pedido_produto pdp
left outer join
	pedido pdd on pdp.idpedido = pdd.idpedido
group by
	pdd.data_pedido;

-- 16
select
	pdd.data_pedido,
	sum(pdp.quantidade) as quantidade
from
	pedido_produto pdp
left outer join
	pedido pdd on pdp.idpedido = pdd.idpedido
group by
	pdd.data_pedido;
	


	



	

	








