Create table Autor (
	idAutor serial not null,
	nome varchar(50) not null,

	constraint pk_aut_idAutor primary key(idAutor),
	constraint un_aut_nome unique (nome)
);

Insert into Autor (nome) values ('Waldemar Setzer');
Insert into Autor (nome) values ('Flavio soares');
Insert into Autor (nome) values ('John watson');
Insert into Autor (nome) values ('Rui rossi dos santos');
Insert into Autor (nome) values ('Antonio Pereira de Resende');
Insert into Autor (nome) values ('Claudiney Calixto Lima');
Insert into Autor (nome) values ('Evandro Carlos Teruel');
Insert into Autor (nome) values ('Ian Graham');
Insert into Autor (nome) values ('Fabricio Xavier');
Insert into Autor (nome) values ('Pablo dallogio');
