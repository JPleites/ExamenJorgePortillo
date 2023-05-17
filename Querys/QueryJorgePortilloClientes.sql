CREATE table LineaCredito(
	Cliente int primary key not null,
	Credito_aprobado int,
	Saldo_Pendiente int,
	Ultimo_Pago int,
	constraint fk_c_ic foreign key (Cliente) references Clientes(ID)
)

insert into LineaCredito(Cliente, Credito_aprobado, Saldo_Pendiente, Ultimo_Pago) values
(120, 4000, 1000, 2),
(121, 4000, 4000, 0),
(122, 4000, 1000, 2),
(123, 4000, 1000, 2),
(124, 4000, 1000, 2),
(125, 4000, 1000, 2),
(126, 4000, 1000, 2),
(127, 4000, 4000, 0),
(128, 4000, 1000, 2),
(129, 4000, 4000, 0);

CREATE table Factura(
	Cliente int,
	Producto_v int, 
	Total int,
	MetodoPago varchar(100),
	CONSTRAINT fk_c_ic FOREIGN KEY (Cliente) REFERENCES Clientes(ID),
	CONSTRAINT fkp_ip FOREIGN KEY (Producto_v) REFERENCES Producto(Id_Producto),
);

insert into factura(Cliente, Producto, Total, MetodoPago) values 
(120, 301, 300, Linea de credito),
(121, 302, 300, Linea de credito),
(122, 303, 300, Linea de credito),
(123, 304, 300, Linea de credito),
(124, 305, 300, Linea de credito),
(125, 306, 300, Linea de credito),
(126, 307, 300, Linea de credito),
(127, 308, 300, Linea de credito),
(128, 309, 300, Linea de credito),
(129, 310, 300, Linea de credito),
