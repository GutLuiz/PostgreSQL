-- 1
select upper(nome) from aluno order by nome asc 
-- 2
select * from emprestimo where data_emprestimo between '2012-04-01' and '2012-04-30' 
-- 3
select 
	idemprestimo,
	idaluno,
	data_emprestimo,
	data_devolucao,
	valor,
	case Devolvido
	when 'S' then 'Devolucao completa'
	else 'Em atraso'
	end as Devolvido
from
	emprestimo;

-- 4
select nome, substring(nome from 5 for 10) from autor; 
-- 5
select
	valor,
	case extract(month from data_emprestimo)
	 	when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'abril'
		when 5 then 'Maio'
	end as Mes
from
	emprestimo


