create trigger tgr_cliente_aiu
on tb_cliente
after insert, update
as
begin
	print 'Trigger AFTER disparada';
end;
go

create trigger tgr_cliente_delete
on tb_cliente
instead of delete
as
begin
	print 'Delete bloqueado pela trigger';
end;
