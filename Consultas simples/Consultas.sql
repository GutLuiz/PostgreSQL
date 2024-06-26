-- Selecionando todos os registros de uma tabela
select * from cliente

-- Filtrando de acordo com os campos pedidos
select nome, data_nascimento from cliente

-- Renomeando o titulo da data
select nome, data_nascimento as "Data de nascimento" from cliente;

-- Concatenando duas colunas, ou seja, juntando duas colunas para uma só
select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente;

-- Colocando um limite de select na base de dados:
select * from cliente limit 3;

-- Fazendo um filtro para retornar somente a condicional pedida
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01'

-- Fazendo um filtro para retornar somente a condicional pedida com o Like
select nome from cliente where nome like 'C%'; -- Para retornar o que tem depois da letra C é preciso o %. Senao ele so vai mostrar o nome que tem somente essa letra.

-- Fazendo um filtro para retornar um nome que começa com qualquer letra e termine com qualquer tambem, mas tenha a letra c no meio
select nome from cliente where nome like '%c%'

-- Utilizando o between para descobrir datas que estao entre uma data pedida
select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01'

-- Pedindo apenas os dados que estão nulos
select nome, rg from cliente where rg is null

-- Colocando em ordem alfabetica (ascendente) com order by
select nome from cliente order by nome asc

-- Retornando agora em descrescente
select nome from cliente order by nome desc













