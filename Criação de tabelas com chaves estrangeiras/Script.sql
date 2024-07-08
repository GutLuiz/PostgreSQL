-- Criando a tabela fornecedor
create table Fornecedor (
	idFornecedor integer not null,
	nome varchar(50) not null,

	constraint pk_fnd_idFornecedor primary key (idFornecedor),
	constraint un_fnd_nome unique (nome)
);

-- Criando a tabela Vendedor
create table Vendedor(
	idVendedor integer not null,
	nome varchar(50) not null,
	constraint pk_vnd_idVendedor primary key (idVendedor),
	constraint un_vnd_nome unique (nome)
);

-- Criando a tabela transportadora
create table transportadora(
	idTransportadora integer not null,
	idmunicipio integer,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(50),
	constraint pk_tpt_idTransportadora primary key (idTransportadora),
	constraint fk_tpt_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
	constraint un_tpt_nome unique (nome)
);

create table Produto (
	idProduto integer not null,
	idFornecedor integer not null,
	nome varchar(50) not null,
	valor varchar(50) not null,

	constraint pk_prd_idproduto primary key (idProduto),
	constraint fk_prd_idfornecedor foreign key(idFornecedor) references Fornecedor (idFornecedor)
);

-- Inserção ddas tabelas:

insert into Vendedor(idVendedor,nome) values(1, 'André');
insert into Vendedor(idVendedor,nome) values(2, 'Alisson');
insert into Vendedor(idVendedor,nome) values(3, 'Jose');
insert into Vendedor(idVendedor,nome) values(4, 'Ailton');
insert into Vendedor(idVendedor,nome) values(5, 'Maria');
insert into Vendedor(idVendedor,nome) values(6, 'Suelem');
insert into Vendedor(idVendedor,nome) values(7, 'Aline');
insert into Vendedor(idVendedor,nome) values(8, 'Silvana');

insert into Fornecedor(idFornecedor,nome) values (1, 'Cap.Computadores');
insert into Fornecedor(idFornecedor,nome) values (2, 'AA.Computadores');
insert into Fornecedor(idFornecedor,nome) values (3, 'BB.Computadores');

insert into Transportadora(idTransportadora, idmunicipio, nome, logradouro, numero) values (1, 9, 'BS.Transportes', 'Rua das linhas', '01'); 
insert into Transportadora(idTransportadora, idmunicipio, nome, logradouro, numero) values (1, 5, 'União transportes', null, null);

insert into Produto ( idProduto, idFornecedor , nome, valor) values (1, 1, 'Microcomputador', '800' );
insert into Produto ( idProduto, idFornecedor , nome, valor) values (2, 1, 'Monitor', '500' );
insert into Produto ( idProduto, idFornecedor , nome, valor) values (3, 2, 'Placa mae', '200' );
insert into Produto ( idProduto, idFornecedor , nome, valor) values (4, 2, 'HD', '150' );
insert into Produto ( idProduto, idFornecedor , nome, valor) values (5, 2, 'Placa Video', '200' );
insert into Produto ( idProduto, idFornecedor , nome, valor) values (6, 3, 'Memoria Ram', '100' );
insert into Produto ( idProduto, idFornecedor , nome, valor) values (7, 1, 'Gabinete', '35' );




