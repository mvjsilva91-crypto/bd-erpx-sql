create view vw_pedidos_detalhes as
select
	p.id_pedido,
	c.razao_social,
	c.nome_fantasia,
	i.descricao,
	pit.quantidade
from tb_pedido p
left join tb_cliente c on p.fk_id_cliente = c.id_cliente
left join tb_pedido_item pit on p.id_pedido = pit.fk_id_pedido
left join tb_item i on pit.fk_id_item = i.id_item;
