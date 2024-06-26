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
