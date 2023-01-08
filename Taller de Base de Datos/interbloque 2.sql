--SEGUNDA TRANSACCION
begin tran t2
update cheques
set balance = balance + 200
where cta = 2

--aqui empieza el problema
--aqui empieza el interbloqueo
update ahorros
set balance = balance -	200
where cta = 2

commit tran t2