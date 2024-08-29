-- Stored procedures : Com uma função parecida com as funções ela facilita para ser ter menos codigo
-- Exemplo: Inserir um bairro.
create procedure insere_bairro (nome_bairro varchar(30)) language sql as
$$
	insert into bairro (nome) values (nome_bairro)
$$
-- Adicionando um bairro:
call insere_bairro('Teste procedure');

select *from bairro

