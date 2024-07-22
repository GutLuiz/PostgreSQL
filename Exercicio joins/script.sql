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





