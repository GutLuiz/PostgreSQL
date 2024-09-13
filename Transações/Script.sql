-- Transações: É quando um determinado valor ou lago do tipo é debitado ou acrescentado de outro valor, o importante é saber 
-- tambem que se algum codigo estiver errado nos updates que você vai fazer, toda a linha de codigo que voce tentou dar go de primeira não vai ser executado
-- Exemplo:
begin;
update conta set saldo = saldo - 100 where idconta = 1;
update conta set saldo = saldo + 100 where idconta = 2;
commit;

-- Como faço para voltar antes da transação?
begin;
update conta set saldo = saldo - 100 where idconta = 1;
update conta set saldo = saldo + 100 where idconta = 2;
rollback;