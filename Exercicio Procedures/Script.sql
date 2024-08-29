-- 1
create procedure reajuste_valor(valor_reajuste integer) varchar(20) language sql as
$$
	insert into produto(idproduto, valor) values (valor_reajuste + valor)
$$