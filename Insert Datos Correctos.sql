use TiendaRopa_V1

--delete from detalle_compra
--delete from Factura
--Delete from Clientes
--Delete from Empleados
--Delete from Personas 

Select * from Productos

CREATE TABLE #Nombres (
    Nombre VARCHAR(50)
);

INSERT INTO #Nombres (Nombre)
VALUES
    ('Liam'),
    ('Olivia'),
    ('Noah'),
    ('Emma'),
    ('Ava'),
    ('Sophia'),
    ('Isabella'),
    ('Mia'),
    ('Jackson'),
    ('Aiden'),
    ('Lucas'),
    ('Caden'),
    ('Grayson'),
    ('Oliver'),
    ('Elijah'),
    ('Aria'),
    ('Ethan'),
    ('Amelia'),
    ('Hazel'),
    ('Luna'),
    ('Mila'),
    ('Chloe'),
    ('Lily'),
    ('Zoe'),
    ('Mason'),
    ('Logan'),
    ('Ella'),
    ('Grace'),
    ('Nora'),
    ('Avery');

	-- Tabla temporal para apellidos
CREATE TABLE #Apellidos (
    Apellido VARCHAR(50)
);

INSERT INTO #Apellidos (Apellido)
VALUES
    ('Smith'),
    ('Johnson'),
    ('Williams'),
    ('Jones'),
    ('Brown'),
    ('Davis'),
    ('Miller'),
    ('Wilson'),
    ('Moore'),
    ('Taylor'),
    ('Anderson'),
    ('Thomas'),
    ('Jackson'),
    ('White'),
    ('Harris'),
    ('Martin'),
    ('Thompson'),
    ('Garcia'),
    ('Martinez'),
    ('Robinson'),
    ('Clark'),
    ('Rodriguez'),
    ('Lewis'),
    ('Lee'),
    ('Walker'),
    ('Hall'),
    ('Allen'),
    ('Young'),
    ('King'),
    ('Wright');


Declare @contPersona int =  0

while @contPersona < 150
begin 
    DECLARE @NumeroAleatorio1 INT;
	SET @NumeroAleatorio1 = CAST((RAND() * 2) + 1 AS INT);
     DECLARE @PNombre VARCHAR(50);
     SELECT TOP 1 @PNombre = Nombre FROM #Nombres ORDER BY NEWID();

	 DECLARE @SNombre VARCHAR(50);
     SELECT TOP 1 @SNombre = Nombre FROM #Nombres ORDER BY NEWID();
-- Seleccionar apellido aleatorio
     DECLARE @PApellido VARCHAR(50);
     SELECT TOP 1 @PApellido = Apellido FROM #Apellidos ORDER BY NEWID();
	 DECLARE @SApellido VARCHAR(50);
     SELECT TOP 1 @SApellido = Apellido FROM #Apellidos ORDER BY NEWID();

	Insert into Personas(id_lugarNacimiento,id_genero,P_nombre,S_nombre,P_apellido,S_apellido,fecha_nacimiento,correo)
	VALUES(1,@NumeroAleatorio1,@PNombre, @SNombre, @PApellido, @SApellido,'1999-06-01','GOT@gmail.com');

	set @contPersona = @contPersona + 1;
END
---------------------------------------------------------
Select * from Personas

Select * from Clientes
Declare @contCliente int =  176297;

while @contCliente < 176397
Begin
	declare @NumeroAleatori1 int;
	set @NumeroAleatori1 = CAST((RAND() * 5) + 1 as int);
	INSERT INTO Clientes (id_persona, id_profesion) 
	VALUES(@contCliente, @NumeroAleatori1)

	set @contCliente = @contCliente + 1;
END
go

-----------------------------------------------------------------
select * from Empleados

Declare @contEmpleado int = 1
Declare @IDPersonas int = 176398;

while @contEmpleado < 51
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

----------------------------------------------------------
Select * from Clientes
Select * from Empleados
Select * from Productos
Select * from DetallesRopa

DECLARE @Factura INT = 0;

WHILE @Factura < 500
BEGIN
    DECLARE @NumeroAleatorio1 INT;
    SET @NumeroAleatorio1 = CAST((RAND() * 50) + 1 AS INT);
    
    DECLARE @NumeroAleatorio2 INT;
    SET @NumeroAleatorio2 = CAST((RAND() * 5) + 1 AS INT);
    
    DECLARE @NumeroAleatorio3 INT;
    SET @NumeroAleatorio3 = CAST((RAND() * (448 - 377 + 1) + 377) AS INT);
    
	DECLARE @NumeroAleatorio5 INT;
	SET @NumeroAleatorio5 = CAST((RAND() * 234) + 1 AS INT);

--  DECLARE @longitud INT = 20;
    DECLARE @CodigoBarras VARCHAR(20);
    SET @CodigoBarras = (Select p.codigo_barras from Productos p where detalle = @NumeroAleatorio5)--SUBSTRING(CONVERT(VARCHAR(MAX), NEWID()), 1, @longitud);
    
	if EXISTS (select 1 From Productos where codigo_barras = @CodigoBarras)
	Begin

		DECLARE @NumeroAleatorio4 INT;
		SET @NumeroAleatorio4 = CAST((RAND() * 5) + 1 AS INT);

		DECLARE @DetalleCompra dbo.ProductoDetalleTableType;
		INSERT INTO @DetalleCompra VALUES (@CodigoBarras, @NumeroAleatorio4);
    
		EXEC GenerarFactura 
			@cliente_id = @NumeroAleatorio3, 
			@empleado_id = @NumeroAleatorio1, 
			@id_local = @NumeroAleatorio2, 
			@TotalPagado = 5000.00, 
			@gravado = 15.00, 
			@Descuento = 0.00, 
			@ProductosDetalle = @DetalleCompra;
			Declare @Factura_id int
SET @Factura_id = SCOPE_IDENTITY(); --OBTIENE EL NUMERO DE FACTURA RECIEN HECHA O INSERTADA
		SET @Factura = @Factura + 1;
	End
	
END



Delete from Factura
delete from detalle_compra


Select * from detalle_compra
Select * From Factura
Select * from Productos
Select * from Clientes
Select * from Empleados
