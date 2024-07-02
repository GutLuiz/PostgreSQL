-- Criando a tabela profissao
create table profissao (
	idprofissao integer not null,
	nome varchar(30) not null,
	constraint pk_prf_idprofissao (idprofissao),
	constraint un_prf_nome unique (nome)
);
-- Inserindo dados na tabela profissao
insert into profissao(idprofissao, nome) values(1, 'estudante');

insert into profissao(idprofissao, nome) values(2, 'Engenheiro');

insert into profissao(idprofissao, nome) values(3, 'Pedreiro');

insert into profissao(idprofissao, nome) values(4, 'Jornalista');

insert into profissao(idprofissao, nome) values(5, 'Professor');

-- Criando a tabela nacionalidade
create table nacionalidade(
	idnacionalidade integer not null,
	nome varchar(30) not null,
	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);
-- Inserindo dados na tabela nacionalidade
Insert into nacionalidade(idnacionalidade, nome) values (1, 'Brasileira');

Insert into nacionalidade(idnacionalidade, nome) values (2, 'Italiana');

Insert into nacionalidade(idnacionalidade, nome) values (3, 'Norte-americana');

Insert into nacionalidade(idnacionalidade, nome) values (4, 'Alemã');

-- Criando a tabela complemento
create table complemento(
	idcomplemento integer not null,
	nome varchar(30),
	constraint pk_cpl_complemento primary key(idcomplemento),
	constraint un_cpl_nome unique (nome)
);
-- Inserindo dados na tabela nacionalidade
insert into complemento (idcomplemento, nome) values(1, 'Casa');

insert into complemento (idcomplemento, nome) values(2, 'Apartamento');

-- Criando a tabela Bairro
create table bairro(
	idbairro integer not null,
	nome varchar(30),
	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);
--Inserindo dados na tabela bairro 
insert into bairro (idbairro, nome) values (1, 'Cidade nova');

insert into bairro (idbairro, nome) values (2, 'Centro');

insert into bairro (idbairro, nome) values (3, 'São Pedro');

insert into bairro (idbairro, nome) values (4, 'Santa Rosa');