-- Usuarios e permissões:
-- Criação de perfis:
create role gerente;
create role estagiario;

--Colocando as permissões e garantindo a segurança:
grant select, insert on bairro, cliente, complemento, municipio, nacionalidade, pedido, pedido_produto, profissao, transportadora, uf, vendedor
to gerente with grant option;
grant all on all sequences in schema public to gerente

-- Exemplo: o estagiario tem somente a função de fazer relatorios.
grant select on cliente_info, pedido_info to estagiario;

-- criação do usuario e vinculando com um perfil:
create role maria login password '123' in role gerente;
create role pedro login password  '321' in role estagiario;
