-- 1
select
	edt.nome as editora,
	count(idlivro) as Quantidade_livro
from
	livro as lvr
left outer join
	editora as edt on lvr.ideditora = edt.ideditora
group by
	edt.nome;

-- 2
select
	ctg.nome as categoria,
	count(idlivro) as Quantidade_livro
from
	livro as lvr
left outer join
	categoria as ctg on lvr.idcategoria= ctg.idcategoria   
group by
	ctg.nome;

-- 3
select
	aut.nome as Autor,
	count(idlivro) as quantidade_livro
from
	livro_autor as lvraut
left outer join
	autor as aut on lvraut.idautor = aut.idautor
group by
	aut.nome;

-- 4
select
	aln.nome as aluno,
	count(idemprestimo) as quantidade
from
	emprestimo as emp
left outer join
	aluno as aln on emp.idaluno = aln.idaluno
group by
	aln.nome

-- 5
select
	aln.nome as Aluno,
	sum(valor) as valor_total_emprestimo
from
	emprestimo as emp
left outer join
	aluno as aln on emp.idaluno = aln.idaluno
group by
	aln.nome;

-- 6
select
	aln.nome as Aluno,
	sum(valor) as valor_total_emprestimo
from
	emprestimo as emp
left outer join
	aluno as aln on emp.idaluno = aln.idaluno
group by
	aln.nome
having
	sum(valor) > 7


	
	


	

