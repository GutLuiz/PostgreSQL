-- Criando a tabela UF
create table uf(
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,
	constraint pk_ufd_idunidade_federecao primary key (iduf),
	constraint un_ufd_idunidade_nome unique (nome),
	constraint un_ufd_idunidade_sigla unique (sigla)
);
-- Inserindo dados na tabela UF
insert into uf (iduf,nome,sigla) values (1, 'Santa catarina', 'SC');
insert into uf (iduf,nome,sigla) values (2, 'Parana', 'PR');
insert into uf (iduf,nome,sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf,nome,sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf,nome,sigla) values (5, 'Rio Grande Do Sul', 'RS');
insert into uf (iduf,nome,sigla) values (6, 'Rio De Janeiro', 'RJ');

-- criando a tabela municipio
create table municipio(
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,
	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	-- Colocando o iduf como chave estrangeira da tabela uf
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf) 
);
-- Inserindo dados na tabela municipio
insert into municipio(idmunicipio,nome,iduf) values(1, 'Porto União', 1);
insert into municipio(idmunicipio,nome,iduf) values(2, 'Canoinhas', 1);
insert into municipio(idmunicipio,nome,iduf) values(3, 'Porto Vitoria', 2);
insert into municipio(idmunicipio,nome,iduf) values(4, 'General Carneiro', 2);
insert into municipio(idmunicipio,nome,iduf) values(5, 'São Paulo', 3);
insert into municipio(idmunicipio,nome,iduf) values(6, 'Rio de Janeiro', 6);
insert into municipio(idmunicipio,nome,iduf) values(7, 'Uberlandia', 4);
insert into municipio(idmunicipio,nome,iduf) values(8, 'Porto Alegre', 5);
insert into municipio(idmunicipio,nome,iduf) values(9, 'União da Vitoria', 2);

-- Colocando essas tabelas na tabela principal Cliente
alter table cliente drop municipio;
alter table cliente drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

-- Atualizando os registros
update cliente set idmunicipio = 1 where idcliente in (1,2,10,11);
update cliente set idmunicipio = 2 where idcliente in (3,12);
update cliente set idmunicipio = 3 where idcliente = 4;
update cliente set idmunicipio = 4 where idcliente = 5;
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente = 7;update cliente set idbairro = 1 where idbairro in(1,12,13);
update cliente set idbairro = 2 where idbairro in(2,3,6,8,9);
update cliente set idbairro = 3 where idbairro in(4,5);
update cliente set idbairro = 4 where idbairro = 7;







