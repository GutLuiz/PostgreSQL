-- 1
alter table pedido_produto alter column valor_unitario set default 0;
alter table pedido_produto alter column quantidade set default 1;

-- 2
alter table produto alter column valor set default 0;
