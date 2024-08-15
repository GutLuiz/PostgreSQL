Create table Livro_Autor (
	idLivro integer not null,
	idAutor integer not null,
	
	constraint pk_lvrat_idLivroIdAutor primary key (idLivro, idAutor),
	constraint fk_lvrat_idLivro foreign key (idLivro) references Livro (idLivro),
	constraint fk_lvrat_idAutor foreign key (idAutor) references Autor (idAutor)	
);

insert into Livro_Autor (idLivro, idAutor) values ('1', '1');
insert into Livro_Autor (idLivro, idAutor) values ('1', '2');
insert into Livro_Autor (idLivro, idAutor) values ('2', '3');
insert into Livro_Autor (idLivro, idAutor) values ('3', '5');
insert into Livro_Autor (idLivro, idAutor) values ('3', '6');
insert into Livro_Autor (idLivro, idAutor) values ('3', '7');
insert into Livro_Autor (idLivro, idAutor) values ('4', '8');
insert into Livro_Autor (idLivro, idAutor) values ('5', '9');



