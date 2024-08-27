-- 1
create function get_valor_by_id(idv integer) returns varchar(50) language plpgsql as
$$
declare v float;
begin
	select valor into v from pedido where idcliente = idv;
	return v;
end;
$$
select data_pedido, idcliente, get_valor_by_id(idcliente) from pedido
	
