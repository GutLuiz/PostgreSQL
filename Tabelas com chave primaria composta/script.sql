-- Criando a tabela pedido 
create table Pedido (
	idPedido integer not null,
	idCliente integer not null,
	idTransportadora integer,
	idVendedor integer not null,
	Data_Pedido Date not null,
	valor float not null,

	constraint pk_pdd_idPedido primary key (idPedido),
	constraint fk_pdd_idCliente foreign key (idCliente) references cliente (idcliente),
	constraint fk_pdd_idTransportadora foreign key(idTransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idVendedor foreign key (idVendedor) references vendedor (idvendedor)	
);

-- adicionando dados da tabela pedido
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (1, '2008-04-01', '1300', 1,1 ,1 );
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (2, '2008-04-01', '1300', 1,1, 1);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (3, '2008-04-01', '1300', 11,2,5);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (4, '2008-04-01', '1300', 8,1, 7 );
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (5, '2008-04-01', '1300', 9,2, 6);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (6, '2008-04-01', '1300', 10,1,6  );
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (7, '2008-04-01', '1300', 3, 1,7);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (8, '2008-04-01', '1300', 3,NULL,7 );
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (9, '2008-04-01', '1300', 12,null,8 );
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (10, '2008-04-01', '1300', 6, 1,8);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (11, '2008-04-01', '1300', 15,2, 1);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (12, '2008-04-01', '1300', 15, 2,5);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (13, '2008-04-01', '1300', 9, 1,7);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (14, '2008-04-01', '1300', 2, 1,5);
insert into Pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor ) values (15, '2008-04-01', '1300', 11,null,5);


select idVendedor, nome from vendedor



-- criando a tabela pedido produto
create table Pedido_produto(
	idPedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	-- chave primaria composta com dois elementos:
	constraint pk_pdp_idpedidoidproduto primary key(idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido(idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

-- inserindo dados na tabela pedidoproduto
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (1,1,1,'800');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (1,2,1,'500');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (2,2,1,'500');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (3,4,2,'150');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,1,1,'800');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,3,1,'200');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (5,3,1,'200');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,1,2,'800');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,7,1,'35');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,5,1,'200');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,4,1,'150');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (7,1,1,'800');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (8,7,5,'35');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,1,1,'800');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,2,1,'500');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (10,5,1,'200');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,5,1,'200');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,6,1,'100');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (12,2,1,'500');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,3,1,'200');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,4,1,'150');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (14,6,3,'100');
insert into Pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (15,3,1,'200');

























