-- comandos adicionais
-- fazendo extração de acordo com o dia ou mes ou ano
select
	data_pedido,
	extract(day from data_pedido),
	extract(month from data_pedido),
	extract(year from data_pedido)
from 
	pedido;

-- SubString: Você pode "Filtrar" uma string como exemplo:
-- selecionar apenas as 5 primeiras letras do string ou a partir da 2 letra:
select nome, substring(nome from 1 for 5) , substring(nome,2) from cliente;

-- Letras maiusculas e minusculas:
select nome, upper(nome) from cliente;
select nome, lower(nome) from cliente;

-- Colocando respostas personalizadas para linhas que estão nulas
select nome, cpf, coalesce(cpf, 'Não informado') from cliente;

-- Condicionais:
select
	case sigla
		when 'PR' then 'Paraná'
		when 'SC' then 'Santa Catarina'
	else 'Outros'
	end as uf
from 
	uf;





