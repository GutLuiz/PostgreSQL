-- 1
select
	data_emprestimo,
	valor
from emprestimo
where
	valor > (select avg(valor) from emprestimo);

-- 2
select
	emp.data_emprestimo,
	emp.valor,
	(select count(elv.idemprestimo) from emprestimo_livro as elv)
from emprestimo as emp

-- 3
select
	data_emprestimo,
	valor
from emprestimo
where
	valor < (select sum(valor) from emprestimo);



	

	
	






select * from emprestimo_livro