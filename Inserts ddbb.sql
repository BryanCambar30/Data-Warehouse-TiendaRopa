use TiendaRopa_V1

Select * from Inventario
Select * from Productos
Select * from Factura
select * from detalle_compra
select * from Clientes
Select * from Empleados
Select * from Factura
select * from detalle_compra
select * from Productos
select * from Factura 

declare @contador int = 0;

while @contador < 50
begin 
	declare @NumeroAleatorio1 int;
	set @NumeroAleatorio1 = CAST((RAND() * 5) + 1 as int);

	declare @NumeroAleatorio2 int;
	set @NumeroAleatorio2 = CAST((RAND() * 5) + 1 as int);

	declare @NumeroAleatorio3 int;
	set @NumeroAleatorio3 = CAST((RAND() * 5) + 1 as int);

	declare @NumeroAleatorio4 int;
	set @NumeroAleatorio4 = CAST((RAND() * 5) + 1 as int);

	declare @NumeroAleatorio5 int;
	set @NumeroAleatorio5 = CAST((RAND() * 5) + 1 as int);

	declare @NumeroAleatorio6 int;
	set @NumeroAleatorio6 = CAST((RAND() * 5) + 1 as int);


	insert into DetallesRopa (id_talla, id_genero, id_color, id_tipo, id_marca, id_proveedor, nombre_producto)
	Values (@NumeroAleatorio1, @NumeroAleatorio2, @NumeroAleatorio3, @NumeroAleatorio4, @NumeroAleatorio5, @NumeroAleatorio6, 'Super style'),
		(@NumeroAleatorio1, @NumeroAleatorio2, @NumeroAleatorio3, @NumeroAleatorio4, @NumeroAleatorio5, @NumeroAleatorio6, 'PowerColor'),
		(@NumeroAleatorio1, @NumeroAleatorio2, @NumeroAleatorio3, @NumeroAleatorio4, @NumeroAleatorio5, @NumeroAleatorio6, 'Super style'),
		(@NumeroAleatorio1, @NumeroAleatorio2, @NumeroAleatorio3, @NumeroAleatorio4, @NumeroAleatorio5, @NumeroAleatorio6, 'SprintDev');

	 set @contador = @contador + 1;
END;
go

Select * from Productos

declare @ContProducto int = 0;

while @ContProducto < 177
begin 
	declare @NumeroAleatorio1 Decimal(10,2);
	set @NumeroAleatorio1 = CAST(RAND() as Decimal(10,2));

	declare @logitud int = 20;
	declare @CodigoBarras varchar(MAX);
	set @CodigoBarras = SUBSTRING(Convert(varchar(MAX), NEWID()), 1, @logitud); 

	DECLARE @NumeroAleatorio2 INT;
    SET @NumeroAleatorio2 = CAST((RAND() * 200) + 1 AS INT);

	DECLARE @NumeroAleatorio3 INT;
    SET @NumeroAleatorio3 = CAST((RAND() * 5) + 1 AS INT);

	SET IDENTITY_INSERT Productos ON
	insert into Productos(codigo_barras, precio, detalle)
	values (@CodigoBarras, @NumeroAleatorio1, @ContProducto)

	insert into Inventario (producto, cantidad_disponible, fecha_llegada, id_bodega)
	values (@CodigoBarras, @NumeroAleatorio2, GETDATE(), @NumeroAleatorio3)

	set @ContProducto = @ContProducto + 1;
END
go


select * from Clientes
select * from Personas


Declare @contPersona int =  0

while @contPersona < 150
begin 
	declare @logitud int = 20;
	declare @CodigoBarras varchar(MAX);
	declare @PNombre varchar(MAX);
	set @PNombre = SUBSTRING(Convert(varchar(MAX), NEWID()), 1, @logitud);
	declare @SNombre varchar(MAX);
	set @SNombre = SUBSTRING(Convert(varchar(MAX), NEWID()), 1, @logitud);
	declare @PApellido varchar(MAX);
	set @PApellido = SUBSTRING(Convert(varchar(MAX), NEWID()), 1, @logitud);
	declare @SApellido varchar(MAX);
	set @SApellido = SUBSTRING(Convert(varchar(MAX), NEWID()), 1, @logitud);
	DECLARE @NumeroAleatorio2 INT;
    SET @NumeroAleatorio2 = CAST((RAND() * 200) + 1 AS INT);
	DECLARE @NumeroAleatorio1 INT;
    SET @NumeroAleatorio1 = CAST((RAND() * 200) + 1 AS INT);
	INSERT INTO Personas (id_lugarNacimiento, id_genero, P_nombre, S_nombre, P_apellido, S_apellido, fecha_nacimiento, correo) 
	VALUES
	(@NumeroAleatorio2, 1, 'Juan', '', 'P�rez', 'Gomez', '1990-01-01', 'juan.perez@ejemplo.com'),
	(@NumeroAleatorio2, 2, 'Mar�a', 'Elena', 'L�pez', 'Rodr�guez', '1995-02-02', 'maria.lopez@ejemplo.com'),
	(@NumeroAleatorio2, 1, 'David', '', 'Garc�a', 'Hern�ndez', '1985-03-03', 'david.garcia@ejemplo.com'),
	(@NumeroAleatorio2, 2, 'Ana', '', 'Mart�nez', 'Fern�ndez', '1998-04-04', 'ana.martinez@ejemplo.com'),
	(@NumeroAleatorio2, 1, 'Carlos', '', 'Gonz�lez', 'P�rez', '1980-05-05', 'carlos.gonzalez@ejemplo.com'),
	(@NumeroAleatorio1, 2, 'Sofia', '', 'Romero', 'L�pez', '2000-06-06', 'sofia.romero@ejemplo.com'),
	(@NumeroAleatorio1, 2, 'Laura', '', 'D�az', 'Garc�a', '2002-07-07', 'laura.diaz@ejemplo.com'),
	(@NumeroAleatorio1, 1, 'Mario', '', 'Torres', 'Hern�ndez', '1975-08-08', 'mario.torres@ejemplo.com'),
	(@NumeroAleatorio1, 2, 'Isabel', '', 'Ramos', 'Mart�nez', '1988-09-09', 'isabel.ramos@ejemplo.com'),
	(@NumeroAleatorio1, 1, 'Alejandro', '', 'Alvarez', 'Fern�ndez', '2005-10-10', 'alejandro.alvarez@ejemplo.com'),
	(@NumeroAleatorio1, 2, 'Valentina', '', 'Morales', 'P�rez', '2007-12-31', 'valentina.morales@ejemplo.com'),
	(@NumeroAleatorio1, 1, 'Daniel', '', 'S�nchez', 'L�pez', '2008-01-01', 'daniel.sanchez@ejemplo.com'),
	(1, 2, 'Daniela', '', 'Castro', 'Garc�a', '2010-02-02', 'daniela.castro@ejemplo.com'),
	(2, 1, 'Jos�', '', 'Jim�nez', 'Hern�ndez', '2012-03-03', 'jose.jimenez@ejemplo.com'),
	(2, 2, 'Paula', '', 'Ortiz', 'Mart�nez', '2014-04-04', 'paula.ortiz@ejemplo.com'),
	(3, 1, 'Miguel', '', 'Moreno', 'Fern�ndez', '2016-05-05', 'miguel.moreno@ejemplo.com'),
	(3, 2, 'Andrea', '', 'Blanco', 'P�rez', '2018-06-06', 'andrea.blanco@ejemplo.com'),
	(1, 2, 'Camila', '', 'Ruiz', 'L�pez', '2020-07-07', 'camila.ruiz@ejemplo.com'),

	set @contPersona = @contPersona + 1;
END

Select * from Clientes
Declare @contCliente int = 0;
declare @IDPersona int = 176260;

while @contCliente < 35
Begin
	declare @NumeroAleatorio1 int;
	set @NumeroAleatorio1 = CAST((RAND() * 5) + 1 as int);
	INSERT INTO Clientes (id_persona, id_profesion) 
	VALUES(@IDPersona, @NumeroAleatorio1)
	set @IDPersona = @IDPersona + 1;
	set @contCliente = @contCliente + 1;
END
go
Select * from Empleados

Declare @contEmpleado int = 6
Declare @IDPersonas int = 101;

while @contEmpleado < 50
begin
	declare @NumeroAleatorio1 int;
	set @NumeroAleatorio1 = CAST((RAND() * 5) + 1 as int);
	declare @NumeroAleatorio2 int;
	set @NumeroAleatorio2 = CAST((RAND() * 5) + 1 as int);
	declare @NumeroAleatorio3 int;
	set @NumeroAleatorio3 = CAST((RAND() * 5) + 1 as int);
	INSERT INTO Empleados (id_empleado, id_persona, id_puesto, id_profesion, id_tienda, telefono, horaEntrada, horaSalida, horasTrabajas, Salario) 
	VALUES ( @contEmpleado, @IDPersonas, @NumeroAleatorio1, @NumeroAleatorio2, @NumeroAleatorio3, 94345678, '08:00:00', '17:00:00', '08:00:00', 2500.00);
	
	set @IDPersonas = @IDPersonas + 1;
	set @contEmpleado = @contEmpleado + 1;
END
go

---------------------------------------

DECLARE @Factura INT = 0;

WHILE @Factura < 200
BEGIN
    DECLARE @NumeroAleatorio1 INT;
    SET @NumeroAleatorio1 = CAST((RAND() * 150) + 1 AS INT);
    
    DECLARE @NumeroAleatorio2 INT;
    SET @NumeroAleatorio2 = CAST((RAND() * 5) + 1 AS INT);
    
    DECLARE @NumeroAleatorio3 INT;
    SET @NumeroAleatorio3 = CAST((RAND() * 100) + 1 AS INT);
    
    DECLARE @longitud INT = 20;
    DECLARE @CodigoBarras VARCHAR(MAX);
    SET @CodigoBarras = SUBSTRING(CONVERT(VARCHAR(MAX), NEWID()), 1, @longitud);
    
    DECLARE @NumeroAleatorio5 INT;
    SET @NumeroAleatorio5 = CAST((RAND() * 5) + 1 AS INT);
    
    DECLARE @DetalleCompra dbo.ProductoDetalleTableType;
    INSERT INTO @DetalleCompra VALUES (@CodigoBarras, @NumeroAleatorio5);
    
    EXEC GenerarFactura 
        @cliente_id = @NumeroAleatorio3, 
        @empleado_id = @NumeroAleatorio1, 
        @id_local = @NumeroAleatorio2, 
        @TotalPagado = 5000.00, 
        @gravado = 15.00, 
        @Descuento = 0.00, 
        @ProductosDetalle = @DetalleCompra;

    SET @Factura = @Factura + 1;
END

Select * from Inventario
Select * from Productos

Select * from Factura
select * from detalle_compra

select * from Clientes
Select * from Empleados


Select * from Factura
select * from detalle_compra
select * from Productos
select * from Personas

declare @ContDetalle int = 6

while @ContDetalle < 200
begin
	declare @Producto varchar(20)
	select @Producto = p.codigo_barras
	from Productos p
	where p.detalle = @ContDetalle

	if @producto is not null
	begin
		DECLARE @NumeroAleatorio1 INT;
		SET @NumeroAleatorio1 = CAST((RAND() * 20) + 1 AS INT);

		insert into detalle_compra(id_detalleCOmpra, n_factura, producto, cantidad)
		values (@ContDetalle, @ContDetalle, @Producto, @NumeroAleatorio1)
	END
	set @ContDetalle = @ContDetalle + 1
END
go

INSERT INTO Personas (id_lugarNacimiento, id_genero, P_nombre, S_nombre, P_apellido, S_apellido, fecha_nacimiento, correo) VALUES

(1, 1, 'Juan', '', 'P�rez', 'Gomez', '1990-01-01', 'juan.perez@ejemplo.com'),
(1, 2, 'Mar�a', 'Elena', 'L�pez', 'Rodr�guez', '1995-02-02', 'maria.lopez@ejemplo.com'),
(2, 1, 'David', '', 'Garc�a', 'Hern�ndez', '1985-03-03', 'david.garcia@ejemplo.com'),
(2, 2, 'Ana', '', 'Mart�nez', 'Fern�ndez', '1998-04-04', 'ana.martinez@ejemplo.com'),
(3, 1, 'Carlos', '', 'P�rez', 'P�rez', '1980-05-05', 'carlos.gonzalez@ejemplo.com'),
(3, 2, 'Sofia', '', 'Romero', 'L�pez', '2000-06-06', 'sofia.romero@ejemplo.com'),
(1, 2, 'Mar�a', '', 'D�az', 'Garc�a', '2002-07-07', 'laura.diaz@ejemplo.com'),
(1, 1, 'Mario', '', 'P�rez', 'Hern�ndez', '1975-08-08', 'mario.torres@ejemplo.com'),
(2, 2, 'Isabel', '', 'Ramos', 'Mart�nez', '1988-09-09', 'isabel.ramos@ejemplo.com'),
(2, 1, 'Alejandro', '', 'Alvarez', 'L�pez', '2005-10-10', 'alejandro.alvarez@ejemplo.com'),
(3, 2, 'Valentina', '', 'Morales', 'P�rez', '2007-12-31', 'valentina.morales@ejemplo.com'),
(1, 1, 'Daniel', '', 'S�nchez', 'L�pez', '2008-01-01', 'daniel.sanchez@ejemplo.com'),
(1, 2, 'Mar�a', '', 'Castro', 'Garc�a', '2010-02-02', 'daniela.castro@ejemplo.com'),
(3, 1, 'Jos�', '', 'Jim�nez', 'Hern�ndez', '2012-03-03', 'jose.jimenez@ejemplo.com'),
(3, 2, 'Paula', '', 'Ortiz', 'Mart�nez', '2014-04-04', 'paula.ortiz@ejemplo.com'),
(3, 1, 'Miguel', '', 'Moreno', 'Fern�ndez', '2016-05-05', 'miguel.moreno@ejemplo.com'),
(2, 2, 'Andrea', '', 'Blanco', 'P�rez', '2018-06-06', 'andrea.blanco@ejemplo.com'),
(1, 2, 'Camila', '', 'P�rez', 'L�pez', '2020-07-07', 'camila.ruiz@ejemplo.com'),
(2, 1, 'Juan', '', 'Blanco', 'Gomez', '1990-01-01', 'juan.perez@ejemplo.com'),
(3, 2, 'Mar�a', 'Elena', 'L�pez', 'L�pez', '1995-02-02', 'maria.lopez@ejemplo.com'),
(4, 1, 'David', '', 'Garc�a', 'Hern�ndez', '1985-03-03', 'david.garcia@ejemplo.com'),
(3, 2, 'Ana', '', 'Mart�nez', 'Fern�ndez', '1998-04-04', 'ana.martinez@ejemplo.com'),
(4, 1, 'Mar�a', '', 'Blanco', 'P�rez', '1980-05-05', 'carlos.gonzalez@ejemplo.com'),
(5, 2, 'Sofia', '', 'Romero', 'L�pez', '2000-06-06', 'sofia.romero@ejemplo.com'),
(2, 2, 'Laura', '', 'S�nchez', 'Garc�a', '2002-07-07', 'laura.diaz@ejemplo.com'),
(1, 1, 'Mario', '', 'Torres', 'L�pez', '1975-08-08', 'mario.torres@ejemplo.com'),
(2, 2, 'Isabel', '', 'Ramos', 'Mart�nez', '1988-09-09', 'isabel.ramos@ejemplo.com'),
(3, 1, 'Alejandro', '', 'Blanco', 'Fern�ndez', '2005-10-10', 'alejandro.alvarez@ejemplo.com'),
(2, 2, 'Valentina', '', 'Morales', 'P�rez', '2007-12-31', 'valentina.morales@ejemplo.com'),
(1, 1, 'Daniel', '', 'S�nchez', 'L�pez', '2008-01-01', 'daniel.sanchez@ejemplo.com'),
(5, 2, 'Mar�a', '', 'Blanco', 'Garc�a', '2010-02-02', 'daniela.castro@ejemplo.com'),
(4, 1, 'Jos�', '', 'Jim�nez', 'Garc�a', '2012-03-03', 'jose.jimenez@ejemplo.com'),
(2, 2, 'Paula', '', 'S�nchez', 'Mart�nez', '2014-04-04', 'paula.ortiz@ejemplo.com'),
(3, 1, 'Miguel', '', 'Ortiz', 'Garc�a', '2016-05-05', 'miguel.moreno@ejemplo.com'),
(1, 2, 'Andrea', '', 'Moreno', 'P�rez', '2018-06-06', 'andrea.blanco@ejemplo.com'),
(4, 2, 'Camila', '', 'Blanco', 'L�pez', '2020-07-07', 'camila.ruiz@ejemplo.com')

Select count(dc.producto), dr.nombre_producto
from [dbo].[Factura] f
inner join [dbo].[detalle_compra] dc on f.n_Factura = dc.n_factura
inner join [dbo].[Productos] p on dc.producto = p.codigo_barras
inner join [dbo].[DetallesRopa] dr on p.detalle = dr.id_detalle
group by dr.nombre_producto