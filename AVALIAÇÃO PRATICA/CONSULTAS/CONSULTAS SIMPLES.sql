-- 1
select nome from autor order by nome asc;
-- 2
select nome from autor where nome like'P%';
-- 3
select nome from livro where nome like 'Banco de dados %' or nome like '% java';
-- 4
select nome from livro where ideditora = 1;
-- 5
select * from emprestimo where data_emprestimo between  '2012-05-05' and '2012-05-10';
-- 6
select * from emprestimo where data_emprestimo not between  '2012-05-05' and '2012-05-10';
-- 7
select * from emprestimo where devolvido = 'S';


