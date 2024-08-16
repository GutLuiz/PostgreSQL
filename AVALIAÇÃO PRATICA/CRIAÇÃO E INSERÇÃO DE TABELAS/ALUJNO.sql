create table Aluno (
	idAluno serial not null,
	nome varchar(50) not null,

	constraint pk_aln_idAluno primary key (idAluno)
);

Insert into Aluno (nome) values ('Mario');
Insert into Aluno (nome) values ('João');
Insert into Aluno (nome) values ('Paulo');
Insert into Aluno (nome) values ('Pedro');
Insert into Aluno (nome) values ('Maria');

