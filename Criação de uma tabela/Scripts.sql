create table cliente (
	idcliente integer not null, -- not null é intregrado pois é obrigatorio o usuario fornercer esse dado para o banco de dados 
	nome varchar(50) not null, -- Varchar é usado para colocar um limite, como no exemplo, 50. Se esse espaço n for preenchido ele não vai armazenar
	cpf char(11) not null, -- O char é usado para colocar um numero especifico de caracteres, como todo cpf tem 11 caracteres é usado o char, ele armazena essa quantidade
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar (30),
	observacoes text,

	-- primary Key, ou seja, não pode ser repetido
	constraint pk_cln_idcliente primary key(idcliente)
	
	
)