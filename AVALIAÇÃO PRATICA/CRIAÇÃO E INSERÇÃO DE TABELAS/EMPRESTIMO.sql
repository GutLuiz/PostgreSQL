Create table Emprestimo (
	idEmprestimo serial not null,
	idAluno integer not null,
	Data_Emprestimo Date default current_date not null,
	Data_Devolucao Date not null,
	valor float not null,
	Devolvido varchar(1) not null,

	constraint pk_emp_idEmprestimo primary key (idEmprestimo),
	constraint fk_emp_idAluno foreign key  (idAluno) references Aluno (idAluno)
);

Insert into Emprestimo (idAluno, Data_Emprestimo, Data_Devolucao, Valor, Devolvido) values ('1', '02/05/2012', '12/05/2012', '10.00', 'S');
Insert into Emprestimo (idAluno, Data_Emprestimo, Data_Devolucao, Valor, Devolvido) values ('1', '23/04/2012', '03/05/2012', '5.00', 'N');
Insert into Emprestimo (idAluno, Data_Emprestimo, Data_Devolucao, Valor, Devolvido) values ('7', '10/05/2012', '20/05/2012', '12.00', 'N');
Insert into Emprestimo (idAluno, Data_Emprestimo, Data_Devolucao, Valor, Devolvido) values ('8', '10/05/2012', '20/05/2012', '8.00', 'S');
Insert into Emprestimo (idAluno, Data_Emprestimo, Data_Devolucao, Valor, Devolvido) values ('9', '05/05/2012', '15/05/2012', '15.00', 'N');
Insert into Emprestimo (idAluno, Data_Emprestimo, Data_Devolucao, Valor, Devolvido) values ('9', '07/05/2012', '17/05/2012', '20.00', 'S');
Insert into Emprestimo (idAluno, Data_Emprestimo, Data_Devolucao, Valor, Devolvido) values ('9', '08/05/2012', '18/05/2012', '5.00', 'S');

select * from aluno