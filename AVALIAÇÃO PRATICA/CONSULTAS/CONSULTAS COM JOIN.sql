-- 1
create view Livro_info as
select
	lvr.nome as Livro,
	ctg.nome as Categoria,
	edt.nome as Editora
from
	livro as lvr
left  outer join
	categoria as ctg on lvr.idcategoria = ctg.idcategoria
left outer join
	editora as edt on lvr.ideditora = edt.ideditora

-- 2
create view Livro_autor_info as
select
	lvr.nome as livro,
	aut.nome as autor
from
	livro_autor as la
left outer join
	livro as lvr on la.idlivro = lvr.idlivro
left outer join
	autor as aut on la.idautor = aut.idautor

-- 3
select
	lvr.nome as livro
from
	livro_autor as la
left outer join
	livro as lvr on la.idlivro = lvr.idlivro
where
	idautor = 9

-- 4
select
	aln.nome as aluno,
	emp.data_emprestimo,
	emp.data_devolucao
from
	emprestimo as emp
left outer join
	aluno as aln on emp.idaluno = aln.idaluno

-- 5
select
	lvr.nome as livro
from
	emprestimo_livro as emplvr
left outer join
	livro as lvr on emplvr.idlivro = lvr.idlivro
	



	

