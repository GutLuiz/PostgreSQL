-- Triggers: Bem parecida com as funções e procedures, mas ela não precisa ser chamada para ser executada
-- Exemplo: Toda vez que for excluido um produto é executado uma trigger. Diferente dos  outros, ela não precisa ser chamada como select ou Call.
-- Criando uma tabela para fazer os exemplos
create table bairro_auditoria (
	idbairro integer not null,
	data_criado timestamp not null
);
-- Essa tabela vai ter a função de toda vez que um bairro for criado tera o id desse bairro e a data da auditoria.
create function bairro_log() returns trigger language plpgsql as
$$
	begin
		insert into bairro_auditoria(idbairro, data_criado) values (new.idbairro, current_timestamp); --  Essa função 
		return new;
	end;
$$;

-- Criando uma trigger que depois do insert na tabela bairro sera executada em todas as linhas a função bairro_log.
create trigger log_bairro_trigger after insert on bairro for each row execute procedure bairro_log();

-- Inserindo dados para exemplo:
call insere_bairro ('teste 1');
call insere_bairro ('teste 2');
call insere_bairro ('teste 3');

-- Mostrando a auditoria
select * from  bairro_auditoria
