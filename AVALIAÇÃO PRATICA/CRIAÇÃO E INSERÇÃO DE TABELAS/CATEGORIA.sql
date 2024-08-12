Create table Categoria (
	idCategoria serial not null,
	nome varchar (50) not null,

	constraint pk_ctg_idcategoria primary key (idCategoria),
	constraint un_ctg_nome unique (nome)
)

insert into Categoria (nome) values ('Banco de dados');
insert into Categoria (nome) values ('HTML');
insert into Categoria (nome) values ('Java');
insert into Categoria (nome) values ('PHP');

