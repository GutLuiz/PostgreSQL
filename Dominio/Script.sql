-- Dominios: Para padronizar os dados é importante você criar alguns dominios, como o  integer, smallint, bigint.
-- Exemplo:
-- ids
create domain idcurto as smallint;
create domain idmedio as integer;
create domain idlongo as bigint;

-- caracteres:
create domain sigla as char(3);
create domain codigo as varchar(10);
create domain nome_curto as varchar(15);
create domain nome_medio as varchar (50);
create domain nome_longo as varchar(70);

-- data e hora:
create domain data as date;
create domain hora as time;
create domain data_hora timestamp;

-- Numericos:
create domain moeda as numeric(10,2);
create domain float_curto as numeric(6,2);
create domain float_medio as numeric(10,2);
create domain float_longo as numeric(15,2);

-- Como mudar o tipo para algum dominio:
alter table nome_da_tabela alter column nome_da_coluna type nome_do_domino;

