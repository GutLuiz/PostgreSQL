-- 1
create view Cliente_Info as
select
	cln.nome as Cliente,
	prf.nome as profissao,
	ncn.nome as nacionalidade,
	cpl.nome as complemento,
	mnc.nome as municipio,
	uf.nome as UF,
	brr.nome as bairro,
	cln.cpf as CPF,
	cln.data_nascimento as Nascimento,
	case genero
		when 'M' then 'Masculino'
		when 'F' then  'Feminino'
	else 'outro'
	end as genero,
	cln.logradouro as logradouro,
	cln.numero as numero,
	cln.observacoes as observacoes	
from
	cliente as cln
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao
left outer join
	nacionalidade as ncn on cln.idnacionalidade = ncn.idnacionalidade
left outer join
	complemento as cpl on cln.idcomplemento = cpl.idcomplemento
left outer join
	municipio as mnc on cln.idmunicipio = mnc.idmunicipio
left outer join
	uf on cln.idmunicipio = mnc.iduf
left outer join
	bairro as brr on cln.idbairro = brr.idbairro

-- 2
create view Municipio_Uf as
select
	mnc.nome as Municipio,
	uf.nome as Unidade_da_Federacao,
	uf.sigla as Sigla
from
	municipio as mnc
left outer join
	uf on mnc.iduf = uf.iduf;
	
-- 3
create view Produto_info as
select
	prd.nome as Produto,
	prd.valor as valor,
	fnd.nome as Fornecedor
from produto as prd
left outer join
	fornecedor as fnd on prd.idfornecedor = fnd.idfornecedor;

-- 4
create view transportadora_info as
select
	trp.nome as transportadora,
	trp.logradouro as logradouro,
	trp.numero as numero,
	uf.nome as Unidade_Da_Federacao,
	uf.sigla as sigla
from
	transportadora as trp
left outer join
	municipio as mnc on trp.idmunicipio = mnc.idmunicipio      
left outer join
	uf on mnc.iduf = uf.iduf;

-- 5
create view pedido_info as
select
	pdd.data_pedido as data_pedido,
	pdd.valor as valor,
	trp.nome as transportadora,
	cln.nome as cliente,
	vnd.nome as vendedor
from
	pedido as pdd
left outer join
	transportadora as trp on pdd.idtransportadora = trp.idtransportadora 
left outer join
	cliente as cln on pdd.idcliente = cln.idcliente
left outer join
	vendedor as vnd on pdd.idvendedor = vnd.idvendedor;

-- 6
create view Pedido_produto_info as
select
	prd.nome as produto,
	prdpdd.quantidade as quantidade,
	prdpdd.valor_unitario as Valor_Unitario
from
	pedido_produto as prdpdd
left outer join
	produto as prd on prdpdd.idproduto = prd.idproduto







	
	

	
	
	
	

	

	
	
	
	
	
	

	