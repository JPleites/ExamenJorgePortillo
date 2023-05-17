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
	
)

