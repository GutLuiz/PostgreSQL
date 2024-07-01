-- Comandos updates e delete

select * from cliente;
update cliente set nome = 'Teste' where idcliente = 1;

-- fazendo alterações em mais campos:
update cliente set nome = 'Adriano', genero ='M', numero = '241' where idcliente = 4;

insert into cliente (idcliente, nome) values (16, 'joão')

-- Apagando o dado:
delete from cliente where idcliente = 16;