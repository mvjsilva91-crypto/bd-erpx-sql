select getdate() as data_atual;

select
	datename(month, data_solicitacao) as mes,
	datename(year, data_solicitacao) as ano
from tb_pedido;

select
	data_solicitacao,
	dateadd(day, 7, data_solicitacao) as prazo_fabricacao,
	dateadd(day, 30, data_solicitacao) as prazo_entrega
from tb_pedido;
