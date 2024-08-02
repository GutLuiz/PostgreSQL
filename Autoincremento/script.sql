-- Autoincremento : Serve para que as chaves primarias não sejam colocadas manualmente, de acordo com os insertes que são adicionados a chave primaria ira manualmente colocar
-- uma sequencia para a nossa tabela
-- Exemplo:

create table exemplo(
	idexemplo serial not null,
	nome varchar (50) not null,

	constraint pk_idexemplo primary key (idexemplo)
); -- Assim toda vez que for adicionado alguma informação tera um id autoincrementado sequencial

-- Como mudar um pk que foi adicionado manualmente para sequencial?

-- Descobrindo qual é o maior id da tabela:
select max(idbairro) + 1 from bairro
-- Criando a sequencia:
create sequence bairro_id_seq minvalue 5
-- Associando a o id da tabela com a sequencia criada:
alter table bairro alter idbairro set default nextval('bairro_id_seq')
-- Colocando qual tabela é o dono da sequencia e tambem qual coluna esta associada a tabela
alter sequence bairro_id_seq owned by bairro.idbairro

-- cliente
select max(idcliente) + 1 from cliente
create sequence cliente_id_seq minvalue 18
alter table cliente alter idcliente set default nextval('cliente_id_seq')
alter sequence cliente_id_seq owned by cliente.idcliente

-- complemento
select max(idcomplemento) + 1 from complemento
create sequence complemento_id_seq minvalue 3
alter table complemento alter idcomplemento set default nextval('complemento_id_seq')
alter sequence complemento_id_seq owned by complemento.idcomplemento

-- Fornecedor	
select max(idfornecedor) + 1 from fornecedor
create sequence fornecedor_id_seq minvalue 4
alter table fornecedor alter idfornecedor set default nextval('fornecedor_id_seq')
alter sequence fornecedor_id_seq owned by fornecedor.idfornecedor

-- municipio
select max(idmunicipio) + 1 from municipio
create sequence municipio_id_seq minvalue 10
alter table municipio alter idmunicipio set default nextval('municipio_id_seq')
alter sequence municipio_id_seq owned by municipio.idmunicipio

-- nacionalidade
select max(idnacionalidade) + 1 from nacionalidade
create sequence nacionalidade_id_seq minvalue 5
alter table nacionalidade alter idnacionalidade set default nextval('nacionalidade_id_seq')
alter sequence nacionalidade_id_seq owned by nacionalidade.idnacionalidade

-- pedido
select max(idpedido) + 1 from pedido
create sequence pedido_id_seq minvalue 16
alter table pedido alter idpedido set default nextval('pedido_id_seq')
alter sequence pedido_id_seq owned by pedido.idpedido


