Create table Emprestimo_Livro (
	idEmprestimo integer not null,
	idLivro integer not null,

	constraint pk_emplvr_IdEmprestimoIdLivro primary key(idEmprestimo, idLivro),
	constraint fk_emplvr_idEmprestimo foreign key (idEmprestimo) references Emprestimo (idEmprestimo),
	constraint fk_emplvr_idLivro foreign key (idLivro) references Livro(idLivro)
);

insert into Emprestimo_Livro (idEmprestimo, idLivro) values (1,1);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (3,4);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (3,3);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (10,2);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (10,7);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (6,5);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (7,4);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (8,6);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (8,1);
insert into Emprestimo_Livro (idEmprestimo, idLivro) values (9,8);




