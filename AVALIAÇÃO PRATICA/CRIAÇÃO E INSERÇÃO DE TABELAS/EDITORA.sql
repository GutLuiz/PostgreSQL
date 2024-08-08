create table Editora(
	idEditora serial not null,
	nome varchar(50) not null,

	constraint pk_edt_idEditora primary key (idEditora),
	constraint un_edt_nome unique (nome)
);