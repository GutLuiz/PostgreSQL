-- Relacionamentos com joins
select cliente.nome, profissao.nome from cliente left outer join profissao on cliente.idprofissao = profissao.idprofissao

select cliente.nome, profissao.nome from cliente inner join profissao on cliente.idprofissao = profissao.idprofissao

-- A principal diferença do inner pro outer é que no inner é obrigatorio que tenha relacinamentos entre as duas colunas, com isso, ela não mostra os nulos.
