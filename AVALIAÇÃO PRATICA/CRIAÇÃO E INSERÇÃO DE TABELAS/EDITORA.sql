create table Editora(
	idEditora serial not null,
	nome varchar(50) not null,

	constraint pk_edt_idEditora primary key (idEditora),
	constraint un_edt_nome unique (nome)
);

insert into Editora (nome) values ('Bookman');
insert into Editora (nome) values ('Edgard Blusher');
insert into Editora (nome) values ('Nova terra');
insert into Editora (nome) values ('Brasport');