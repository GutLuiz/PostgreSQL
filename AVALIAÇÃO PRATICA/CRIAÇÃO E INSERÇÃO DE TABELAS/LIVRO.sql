Create table Livro (
	idLivro serial not null,
	idEditora integer not null,
	idCategoria integer not null,
	nome varchar(50) not null,

	constraint pk_lvr_idLivro primary key (idLivro),
	constraint fk_lvr_idEditora foreign key (idEditora) references Editora (idEditora),
	constraint fk_lvr_idCategoria foreign key (idCategoria) references Categoria (idCategoria),
	constraint un_lvr_nome unique (nome)
);

insert into Livro (idEditora, idCategoria, nome) values ('2', '1', 'Banco de dados - 1 Edição');
insert into Livro (idEditora, idCategoria, nome) values ('1', '1', 'Oracle DataBase 11G administração');
insert into Livro (idEditora, idCategoria, nome) values ('3', '3', 'Programção de Computadores em java');
insert into Livro (idEditora, idCategoria, nome) values ('4', '3', 'Programção Orientada a aspectos em java');
insert into Livro (idEditora, idCategoria, nome) values ('4', '2', 'HTML5- Guia Pratico');
insert into Livro (idEditora, idCategoria, nome) values ('3', '2', 'XHTML: Guia de refeencia para desenvolvimento web');
insert into Livro (idEditora, idCategoria, nome) values ('1', '4', 'PHP para desenvolvimento profissional');
insert into Livro (idEditora, idCategoria, nome) values ('2', '4', 'PHP com programção orientada a obejtos');


