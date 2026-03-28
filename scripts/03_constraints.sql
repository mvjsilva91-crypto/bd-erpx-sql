alter table tb_pedido add constraint tb_pedido_cliente 
foreign key(fk_id_cliente) references tb_cliente(id_cliente);

alter table tb_pedido_item add constraint tb_pedido_item_id_pedido 
foreign key(fk_id_pedido) references tb_pedido(id_pedido);

alter table tb_pedido_item add constraint tb_pedido_item_id_item 
foreign key(fk_id_item) references tb_item(id_item);

alter table tb_ordem_producao add constraint fk_tb_ordem_producao_pedido
foreign key(fk_id_pedido) references tb_pedido(id_pedido);

alter table tb_pedido add status_pedido varchar(15) default 'aberto';

alter table tb_pedido add constraint chk_status_pedido check
(
	status_pedido = 'aberto'
	or status_pedido = 'andamento'
	or status_pedido = 'cancelado'
	or status_pedido = 'finalizado'
);

alter table tb_ordem_producao add constraint chk_status_ordem_producao check
(
	status_ordem_producao = 'aberto'
	or status_ordem_producao = 'andamento'
	or status_ordem_producao = 'cancelado'
	or status_ordem_producao = 'finalizado'
);
