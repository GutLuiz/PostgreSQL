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

-- 4
select idmunicipio ,substring(nome from 5 for 10) from municipio

-- 5
select
	upper(nome)
from  
	municipio;

-- 6
select
	nome,
	case genero
		when 'M' then 'Masculino'
		when 'F' then  'Feminino'
	else 'outro'
	end as genero
from 
	cliente;

-- 7
select 
	nome,
	valor,
	case 
		when valor >= 500 then 'Acima de 500' 
		else 'Abaixo de 500'
		end as faixa
from
	produto;



	
