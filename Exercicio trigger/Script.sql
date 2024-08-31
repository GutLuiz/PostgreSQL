-- 1
Create table pedidos_apagados (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer not null,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null
);

create or replace function pedido_log() returns trigger language plpgsql as
$$
	begin
		insert into pedidos_apagados(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor)
		values(old.idpedido, old.idcliente, old.idtransportadora, old.idvendedor, old.data_pedido, old.valor);
		return old;
	end;
$$;

create or replace trigger log_pedido_trigger before delete on pedido for each row execute procedure pedido_log();

delete from pedido where idpedido = 16

select * from pedidos_apagados

	


