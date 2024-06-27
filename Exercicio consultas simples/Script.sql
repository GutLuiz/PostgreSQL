-- 1
select nome, genero, profissao from cliente order by nome desc;

-- 2
select nome from cliente where nome like'%r%';

-- 3
select nome from cliente where nome like 'C%';

-- 4 
select nome from cliente where nome like '%a';

-- 5
select nome, bairro from cliente where bairro like 'Centro';

-- 6 
select nome, complemento from cliente where complemento like 'A%';

-- 7 
select nome, genero from cliente where genero like 'F';

-- 8
select nome, cpf from cliente where cpf is null;

-- 9 
select nome, profissao from cliente order by profissao asc;

-- 10
select nome, nacionalidade from cliente where nacionalidade like 'Brasileira';

-- 11
select nome, numero from cliente where numero is not null;

-- 12
select nome, uf from cliente where uf like 'SC';

-- 13
select nome, data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

-- 14
select 'Nome: ' || nome || ', Logradouro: ' ||logradouro || ', Numero: ' || numero || ', Complemento: ' || complemento || ', Bairro: ' || bairro || ', Municipio: ' 
|| municipio || ', UF: ' || uf from cliente ;



