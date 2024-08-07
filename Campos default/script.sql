-- Campos default:
-- Essencial para a organização e logica da sua tabela, colocar um valor default caso não tenho sido especificado, mesmo sendo obrigatorio colocar alguma informação (not null)
-- Exemplo:
Alter table pedido alter column data_pedido set default current_date;
alter table pedido alter column valor set default 0;
insert into pedido (idcliente,idvendedor) values (1, 1)
select * from pedido
-- Com isso linhas não especificadas são colocadas algum valor default, como na data que ficou na data atual e no valor que ficou 0.
