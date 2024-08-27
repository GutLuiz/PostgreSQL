-- Funções: Importante  para criações de formatação e como é muito complicado, é muito importante ter na base de dados essas funçoes para
-- economizar tempo:
-- Exemplo:
-- Como seria sem a função:
select valor, concat ('R$ ', round(cast(valor as numeric), 2)) from pedido
-- Criando uma função:
Create function formata_moeda(valor float) returns varchar(20) language plpgsql as
$$
begin
	return concat ('R$ ', round(cast(valor as numeric), 2));
end;
$$;
-- Seletando com uma função criada:
select formata_moeda(valor) from pedido

-- Fazendo o mesmo para outra tabela:
select formata_moeda(valor) from produto

-- Cridando outra função para aparecer o nome pelo id:
Create function get_nome_by_id(idc integer) returns varchar(50) language plpgsql as -- Cria a função com o parametro inteiro chamado idc e retorna uma string
$$
declare r varchar(50); -- declara uma variavel varchar
begin
	select nome into r from cliente where idcliente = idc; -- cria o comando que a função vai exercer 
	return r; -- retorna a variavel.
end;
$$
-- Seletando com a função
select data_pedido, valor, idcliente, get_nome_by_id(idcliente) from pedido












