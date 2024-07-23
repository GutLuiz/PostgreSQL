-- 1
select
	nome,
   coalesce(extract(month from data_nascimento), 0)
from
	cliente;

-- 2
select
	nome,
	case extract (month from data_nascimento)
		when 1 then 'janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'abril'
		when 5 then 'Maio'
		when 6 then 'junho'
		when 7 then 'julho'	
		when 8 then 'agosto'
		when 9 then 'setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	else 
		'Não informado'
	end as mes
from 
	cliente;

-- 3
select
	nome,
coalesce(extract(year from data_nascimento), 'Não informado')
from 
	cliente;
