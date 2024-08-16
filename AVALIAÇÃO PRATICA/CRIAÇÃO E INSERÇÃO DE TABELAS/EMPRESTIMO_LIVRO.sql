Create table Emprestimo_Livro (
	idEmprestimo integer not null,
	idLivro integer not null,

	constraint pk_emplvr_IdEmprestimoIdLivro primary key(idEmprestimo, idLivro),
	constraint fk_emplvr_idEmprestimo foreign key (idEmprestimo) references Emprestimo (idEmprestimo),
	constraint fk_emplvr_idLivro foreign key (idLivro) references Livro(idLivro)
);

insert into Empretimo_Livro (idEmprestimo, idLivro) values (1,6);
insert into Empretimo_Livro (idEmprestimo, idLivro) values (3, 4);
insert into Empretimo_Livro (idEmprestimo, idLivro) values (3, 3);
insert into Empretimo_Livro (idEmprestimo, idLivro) values (, '');
insert into Empretimo_Livro (idEmprestimo, idLivro) values ('', '');
insert into Empretimo_Livro (idEmprestimo, idLivro) values ('', '');
insert into Empretimo_Livro (idEmprestimo, idLivro) values ('', '');
insert into Empretimo_Livro (idEmprestimo, idLivro) values ('', '');
insert into Empretimo_Livro (idEmprestimo, idLivro) values ('', '');
insert into Empretimo_Livro (idEmprestimo, idLivro) values ('', '');

select * from emprestimo
select * from aluno
select * from livro
