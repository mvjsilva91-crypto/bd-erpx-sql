/* =====================================
   INSERTS - TABELA CLIENTE
===================================== */
insert into tb_cliente (razao_social, nome_fantasia)
values 
('Franquia 1', 'José Chocolates'),
('Franquia 2', 'Maria Chocolates'),
('Franquia 3', 'Marcela Chocolates'),
('Franquia 4', 'João Chocolates');
go


/* =====================================
   INSERTS - TABELA ITEM
===================================== */
insert into tb_item (descricao)
values
('Trufa Lacreme Branco 13,5G'),
('Trufa Lanut Castanha de Caju 13,5G'),
('Trufa Lanut 30G'),
('Drageado Lanut Avelã 150G'),
('Chocolate Cremoso Receitas 100G'),
('Tablete Lacreme ao Leite 20G'),
('Pão de Mel Doce de Leite 50G'),
('Trufas Lacreme 160G'),
('Bombom tradicional 18G'),
('Caixa Presente tradicional 225G');
go


/* =====================================
   INSERTS - TABELA PEDIDO
===================================== */
insert into tb_pedido (fk_id_cliente)
values 
(1),
(3),
(4);
go


/* =====================================
   INSERTS - TABELA PEDIDO_ITEM
===================================== */

-- Pedido 1
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)
values
(1, 1, 110),
(1, 2, 150),
(1, 3, 90),
(1, 5, 50);
go

-- Pedido 2
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)
values
(2, 2, 50),
(2, 3, 50),
(2, 6, 50),
(2, 7, 120),
(2, 8, 110),
(2, 9, 400);
go

-- Pedido 3
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)
values
(3, 4, 200),
(3, 5, 180),
(3, 6, 150);
go
