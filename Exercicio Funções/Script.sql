drop function get_valor_pedido(iddpdd integer)

-- 1
create or replace function get_valor_pedido(idpdd integer) returns varchar(20) language plpgsql as
$$
	begin
		return (select formata_moeda(pdd.valor) from pedido pdd where pdd.idpedido = idpdd); 
	end;
$$;

select get_valor_pedido(idpedido) from pedido 

-- 2
create function get_maior_pedido(idmaior integer) returns varchar(20) language plpgsql as
$$
	begin
		return(select max(pdd.valor) from pedido pdd where pdd.idpedido = idmaior);
	end;
$$;

select get_maior_pedido(idpedido) from pedido