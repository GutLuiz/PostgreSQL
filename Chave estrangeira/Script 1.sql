-- Deixando as colunas da tabela Cliente padronizada com a ajuda de outras tabelas

-- TABELA PROFISSAO
-- Estudante -> 1,9,10,12,15,17
-- Pedreiro -> 3
-- Engenheiro -> 2
-- Jornalista -> 4,5
-- Professor -> 6,7,8,13
-- null -> 11,14

-- Apagando um campo usando Drop
alter table cliente drop idprofissao;
-- Adicionando um campo usando ADD
alter table cliente add idprofissao integer;
-- Fazendo relacionamento com a tabela profissao e cliente
alter table cliente add constraint fk_cln_idprofissao foreign key(idprofissao) references profissao (idprofissao); -- foreing key = chave estrangeira

-- Agora posso colocar os ids respectivos para cada profissao do cliente utilizando o update e o in para adicionar varios de uma vez
update cliente set idprofissao = 1 where idcliente in (1,9,10,12,15,17);
update cliente set idprofissao = 2 where idcliente in (2);
update cliente set idprofissao = 3 where idcliente in (3);
update cliente set idprofissao = 4 where idcliente in (4,5);
update cliente set idprofissao = 5 where idcliente in (6,7,8,13);

-- TABELA NACIONALIDADE

select *from cliente;

alter table cliente drop idnacionalidade;
alter table cliente add idnacionalidadde integer;
alter table cliente rename column idnacionalidadde to idnacionalidade;
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);
select * from nacionalidade
update cliente set idnacionalidade = 1 where idcliente in (1,2,3,4,6,10,11,14);
update cliente set idnacionalidade = 2 where idcliente in (5,7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9,13);

-- TABELA COMPLEMENTO
alter table cliente drop complemento;
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key(idcomplemento) references complemento(idcomplemento);
update cliente set idcomplemento = 1 where idcliente in (1,4,9,13);
update cliente set idcomplemento = 2 where idcliente in (2,3,7);

-- TABELA BAIRRO
alter table cliente drop bairro;
alter table cliente add idbairro integer;
ALTER TABLE cliente ADD CONSTRAINT fk_cln_idbairro FOREIGN KEY (idbairro) REFERENCES bairro (idbairro);
update cliente set idbairro = 1 where idcliente in(1,12,13);
update cliente set idbairro = 2 where idcliente in(2,3,6,8,9);
update cliente set idbairro = 3 where idcliente in(4,5);
update cliente set idbairro = 4 where idcliente = 7;






























































































