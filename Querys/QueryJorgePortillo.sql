CREATE DATABASE MercaditoDB

create table Clientes(
	ID INT primary key not null,
	Nombre varchar(100),
	Linea_Credito varchar(100),
	Estado varchar(50),
	Contacto int
);

INSERT INTO Clientes (ID, Nombre, Linea_Credito, Estado, Contacto) values
(120, 'Mario Dominguez', 'Si', 'Al dia', 90909090),
(121, 'Maria Mercedez', 'Si', 'Deudor', 90909091),
(122, 'Beatriz Pinzon', 'Si', 'Al dia', 90909092),
(123, 'Juan Reyes', 'Si', 'Al dia', 90909093),
(124, 'Juan Carlos Bodoque', 'Si', 'Al dia', 90909094),
(125, 'Reina Quintero', 'Si', 'Al dia', 90909095),
(126, 'Sebastian Espinoza', 'Si', 'Al dia', 90909096),
(127, 'Jorge Portillo', 'Si', 'Deudor', 90909097),
(128, 'Benito Juares', 'Si', 'Al dia', 90909098),
(129, 'Armando Mendoza', 'Si', 'Deudor', 90909099);

CREATE table Proveedores(
	ID_Proveedor int primary key not null,
	Proveedor varchar(50),
	TipoProveedor varchar(50),
	TipoProductos varchar(50)
);

INSERT INTO Proveedores(ID_Proveedor, Proveedor, TipoProveedor, TipoProductos) values
(210, 'Sula', 'Pedidos', 'Lacteos'),
(211, 'Leyde', 'Pedidos', 'Jugos'),
(212, 'Pepsi', 'Entrega Inmediata', 'Refrescos'),
(213, 'Coca Cola', 'Entrega Inmediata', 'Refrescos'),
(214, 'Bimbo', 'Pedidos', 'Pan'),
(215, 'Delicia', 'Entrega Inmediata', 'Embutidos'),
(216, 'Pan Maximiliano', 'Pedidos', 'Pan Dulce'),
(217, 'Yummies', 'Entrega Inmediata', 'Galletas y Churros'),
(218, 'Sarita', 'Entrega Inmediata', 'Helados'),
(219, 'Aguazul', 'Entrega Inmediata', 'Agua Embotellada');

CREATE TABLE Pedido(
	ID_Pedido int PRIMARY KEY NOT NULL,
	Proveedor int,
	Producto varchar(100),
	Cantidad int NOT NULL,
	Total int,
	constraint fk_p_ip FOREIGN KEY (Proveedor) REFERENCES Proveedores(ID_Proveedor),
);

INSERT INTO Pedido(ID_Pedido, Proveedor, Producto, Cantidad, Total) values
(1, 210, 'Leche', 10, 1000),
(2, 211, 'Jugo de Naranja', 15, 900),
(3, 212, 'Refresco', 20, 2000),
(4, 213, 'Refresco', 15, 1700),
(5, 214, 'Pan', 5, 200),
(6, 215, 'Jamon', 10, 400),
(7, 216, 'Semitas', 12, 600),
(8, 217, 'Zambos', 20, 900),
(9, 218, 'Cono Sundae', 10, 900),
(10, 219, 'Agua', 10, 1000);

CREATE table Producto(
	Id_Producto int primary key,
	Producto varchar(100),
	Valor int,
	Proveedor int,
	constraint fk_ip_ipr foreign key (Proveedor) references Proveedores(ID_Proveedor)
)

insert into Producto(Id_Producto, Producto, Valor, Proveedor) values
(301, 'Leche', 30,'210'),
(302, 'Jugo de Naranja', 20,'211'),
(303, 'Refresco', 60,'212'),
(304, 'Refresco', 60,'213'),
(305, 'Pan', 40,'214'),
(306, 'Jamon', 20,'215'),
(307, 'Semitas', 25,'216'),
(308, 'Zambos', 5,'217'),
(309, 'Cono Sundae', 30,'218'),
(310, 'Agua', 40,'219');

CREATE table Bodega(
	Id_Producto int not null,
	Cantidad int,
	Cantidad_Exhibida int,
	Ventas_por_semana int,
	constraint fk_ib_ip foreign key (Id_Producto) references Producto(Id_Producto)
);

