-- 1
create role atendente;
-- 2
grant select, insert on pedido, pedido_produto to atendente with grant option;
grant all on all sequences in schema public to atendente
-- 3
create role Luiz login password '1234' in role atendente;

