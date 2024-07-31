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

	
	
	

	
	
	
	

	

	
	
	
	
	
	

	