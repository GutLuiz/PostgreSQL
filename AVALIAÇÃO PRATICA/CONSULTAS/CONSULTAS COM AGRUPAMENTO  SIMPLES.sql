-- 1
select count(nome) from livro;
-- 2 
select sum(valor) from emprestimo;
-- 3
select avg(valor) from emprestimo;
-- 4
select max(valor) from emprestimo;
-- 5
select min(valor) from emprestimo;
-- 6
select sum(valor) from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10'
-- 7
select count(idemprestimo) from emprestimo where data_emprestimo between '2012-05-01' and '2012-05-05';




