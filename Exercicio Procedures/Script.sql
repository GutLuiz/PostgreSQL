-- 1
create procedure  reajusta_produto(idp integer, percentual float) language sql as
$$
	update produto set valor = valor + ((valor * percentual) / 100) where idproduto = idp;
$$;
call reajusta_produto(1,10)

select * from produto where idproduto = 1

-- 2
create procedure exclua_produto(idpe integer) language sql as
$$
	delete from produto where idproduto = idpe;
$$

call exclua_produto(1)