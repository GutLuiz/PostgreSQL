-- VIEWS: Ele é usado para economizar tempo, pois faz a mesma função do join mas ela fica armazenada na tabela sem que precise escrever o codigo novamente
--Exemplo
create view Cliente_Profissao as
select
	cln.nome as Cliente,
	prf.nome as profissao
from
	cliente as cln
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao

-- Para ver seu view
select * from cliente_profissao

-- para apagar uma view
drop view nome_da_view