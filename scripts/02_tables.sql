create table tb_cliente (
	id_cliente int primary key identity(1,1),
	razao_social varchar(200) not null,
	nome_fantasia varchar(100)
);

create table tb_item (
	id_item int primary key identity(1,1),
	descricao varchar(200) not null
);

create table tb_pedido (
	id_pedido int primary key identity(1,1),
	fk_id_cliente int not null,
	data_solicitacao datetime default getdate()
);

create table tb_pedido_item (
	id_pedido_item int primary key identity(1,1),
	fk_id_pedido int not null,
	fk_id_item int not null,
	quantidade int not null
);

create table tb_ordem_producao (
	id_ordem_producao int primary key identity(1,1),
	fk_id_pedido int not null,
	data_limite_fabricacao datetime not null,
	status_ordem_producao varchar(15) default 'aberto'
);
