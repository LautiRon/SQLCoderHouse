Create database	triggers_Lautaro_Ron;
USE triggers_Lautaro_Ron;

CREATE TABLE usuario (Id_Cliente INT NOT NULL PRIMARY KEY auto_increment,
FecNac varchar(15) NOT NULL, EstCiv VARCHAR(15) NOT NULL, 
CUIL_CUIT VARCHAR(15) NOT NULL, Sexo CHAR(1) NOT NULL, Ocup VARCHAR(20) NOT NULL, 
EMPLEADOR VARCHAR(50), usuario VARCHAR(8) NOT NULL, 
Nomb VARCHAR (50) NOT NULL, Apellido VARCHAR(50) NOT NULL,Clave CHAR(4) NOT NULL);

CREATE TABLE Productos (Id_Productos INT NOT NULL auto_increment primary KEY, Descripcion VARCHAR(60) NOT NULL);

CREATE TABLE Servicios_Contratados (Id_Servicio INT NOT NULL auto_increment, FecVenc DATE NOT NULL,
Alias CHAR(20), Id_Cliente INT NOT NULL, Id_Productos INT NOT NULL,
PRIMARY KEY (Id_Servicio),
FOREIGN KEY (Id_Cliente) REFERENCES usuario (Id_Cliente),
FOREIGN KEY (Id_Productos) REFERENCES Productos (Id_Productos)) ;
 
CREATE TABLE Adicionales (Id_Usuarios INT NOT NULL PRIMARY KEY auto_increment,
Lim INT NOT NULL,Nomb VARCHAR(50) NOT NULL, 
Apellido VARCHAR(50) NOT NULL, Id_Servicio INT NOT NULL,
FOREIGN KEY (Id_Servicio)
REFERENCES Servicios_Contratados (Id_Servicio));


CREATE TABLE Resumen (Id_Transaccion INT NOT NULL auto_increment, Moneda VARCHAR(10) NOT NULL,
Cuotas INT NOT NULL,Intereses FLOAT, 
Monto FLOAT NOT NULL, Id_Cliente INT NOT NULL,Id_Productos INT NOT NULL,
PRIMARY KEY (Id_Transaccion),
FOREIGN KEY (Id_Cliente)
REFERENCES usuario(Id_Cliente),
FOREIGN KEY (Id_Productos)
REFERENCES Productos(Id_Productos));

insert into Usuario values (1,"14/4/1996","Soltero/a","20-39523795-1","M","Empleado/a","Clarin","Lis.Mar","Lisandro","Martinez",1429), 
(2,"24/10/2001","Soltero/a","21-42187942-3","F","Estudiante","NULL","Luc.Cor","Lucia","Cordoba",2201), 
(3,"1/10/1986","Casado/a","20-30128526-1","M","Empleado/a","AFIP","Ger.Rom","Gerardo","Romero",2410), 
(4,"20/7/1966","Casado/a","20-17196207-1","M","Empleado/a","La Nacion","Est.Fer","Esteban","Fernandez",5987), 
(5,"21/3/1969","Soltero/a","21-24716052-3","F","Empleado/a","Municipalidad","Est.Tap","Esther","Tapia",3209), 
(6,"10/7/1974","Casado/a","21-27953160-3","F","Empleado/a","General Motors","Nat.Dia","Natalia","Diaz",9654), 
(7,"5/6/1955","Viudo/a","20-16651393-1","M","Jubilado/a","NULL","Ric.Mon","Ricardo","Montoya",7675), 
(8,"14/5/1999","Soltero/a","21-41804113-3","F","Estudiante","NULL","Agu.Lop","Agustina","Lopez",5431), 
(9,"22/1/1998","Soltero/a","21-41097710-3","F","Estudiante","NULL","Mar.Tri","Martina","Triverio",2341), 
(10,"20/2/1970","Casado/a","20-26781899-1","M","Empleado/a","Clarin","Ram.Mar","Ramon","Martin",4362);

insert into productos values(1,"Tarjeta Credito Visa"), 
(2,"Tarjeta Credito MasterCard"), 
(3,"Tarjeta Credito American Express"), 
(4,"Tarjeta de Debito"), 
(5,"Caja de ahorro en pesos"), 
(6,"Caja de ahorro en dolares"), 
(7,"Cuenta Corriente"), 
(8,"Plazo Fijo"), 
(9,"Prestamo Personal"), 
(10,"Seguro de vida"), 
(11,"Seguro de Auto"), 
(12,"Seguro de Celular"), 
(13,"Combo Seguros");

insert into Servicios_contratados values (NULL,2027-10-27,NULL,4,1), 
(NULL,2021-1-04,NULL,4,2),
(NULL,2026-5-26,NULL,7,3),
(NULL,2022-6-22,"Alas.piedra.casa",1,5),
(NULL,2028-7-28,"tasa.pera.pata",1,6),
(NULL,2022-11-22,NULL,1,1),
(NULL,2027-12-27,NULL,1,2),
(NULL,2024-11-24,NULL,5,7),
(NULL,2025-10-25,NULL,6,8),
(NULL,2024-9-24,NULL,7,9),
(NULL,2027-12-27,NULL,8,10),
(NULL,2024-11-24,NULL,9,11),
(NULL,2025-10-25,NULL,10,12),
(NULL,2026-5-26,NULL,5,13),
(NULL,2022-6-22,NULL,2,1),
(NULL,2028-7-28,NULL,3,1),
(NULL,2028-7-28,NULL,6,2),
(NULL,2022-11-22,NULL,7,2),
(NULL,2026-5-26,"cara.lata.pote",8,5);

insert into adicionales values (1,20000,"roman","martinez",1), 
(2,30000,"Lucia","Fernandez",2), 
(3,100000,"Maria ","Montoya",2), 
(4,0,"Martin","Lopez",5);

INSERT INTO resumen	values (NULL,"Pesos",1,NULL,25968.2,4,1), 
(NULL,"Pesos",1,NULL,35454.75,4,2), 
(NULL,"Pesos",1,NULL,5023.6,7,3), 
(NULL,"Pesos",3,0,42587.92,2,1), 
(NULL,"Pesos",1,NULL,38228.35,3,1), 
(NULL,"Pesos",1,NULL,38707.24,6,2), 
(NULL,"Pesos",1,NULL,16777.59,7,2), 
(NULL,"Pesos",1,NULL,5873.13,8,5), 
(NULL,"Pesos",1,NULL,32141.19,2,1), 
(NULL,"Pesos",1,NULL,2963.54,1,5), 
(NULL,"Pesos",1,NULL,2238.38,1,6), 
(NULL,"Pesos",1,NULL,24415.45,4,1), 
(NULL,"Pesos",1,NULL,4863.86,2,1), 
(NULL,"Pesos",1,NULL,37210.84,3,1), 
(NULL,"Pesos",3,0,44432.55,6,2), 
(NULL,"Pesos",1,NULL,15391.77,7,2), 
(NULL,"Pesos",6,9562.8894,41577.78,4,1), 
(NULL,"Pesos",1,NULL,15408.62,2,1), 
(NULL,"Pesos",1,NULL,36783.52,3,1), 
(NULL,"Pesos",1,NULL,16302.8,6,2), 
(NULL,"Pesos",1,NULL,14544.32,7,2);

CREATE VIEW Personas_Con_Tarjetas as select Id_cliente, Id_Productos
FROM Servicios_contratados
WHERE Id_Productos <=3;

CREATE VIEW Adicionales_con_limite as select Id_usuarios, Lim, nomb, apellido
FROM adicionales
WHERE Lim > 0;

CREATE VIEW Compras_en_cuotas as select cuotas, monto
FROM Resumen
WHERE cuotas >0;

CREATE VIEW Usuarios_con_gasto_mayor_a_100000 as select sum(monto), Id_cliente
FROM resumen
group by Id_cliente
HAVING sum(monto)>100000;

CREATE VIEW estudiantes as select Id_cliente, Nomb, Apellido, Ocup
FROM usuario
WHERE Ocup = "estudiante";

#Store procedure pra ordenar los servicios contratados por la columna deseada, sea cliente, servicio o fecha de vencimiento por ejemplo
DROP PROCEDURE IF EXISTS sp_ordenar_productos;
DELIMITER %%
CREATE PROCEDURE sp_ordenar_productos (IN campo char(20))
BEGIN
	IF campo <> "" THEN
		SET @ordenar = CONCAT('ORDER BY ', campo);
	ELSE 
		SET @ordenar = '';
	END IF;
	SET @clausula = concat('SELECT * FROM servicios_contratados ', @ordenar, ';');
	PREPARE ejecutarSQL from @clausula;
    EXECUTE ejecutarSQL;
    DEALLOCATE PREPARE ejecutarSQL;
END %%
CALL sp_ordenar_productos('Id_servicio');

#Store procedure para agregar nuevos productos a la tabla de productos

DROP PROCEDURE IF EXISTS sp_ultimo_producto;
DELIMITER %%
Create Procedure sp_ultimo_producto(out producto int)
BEGIN
	SELECT MAX(Id_productos) into producto
    From productos;
End %%

CALL sp_ultimo_producto(@ULTIMO_producto);

select @ultimo_producto as Ultimo_producto;

DROP PROCEDURE IF EXISTS sp_crea_producto;
DELIMITER %%
CREATE PROCEDURE sp_crea_producto(Descripcion VARCHAR(60))
BEGIN
	DECLARE NUEVO_PRODUCTO INT;
    CALL sp_ultimo_producto(@NUEVO_PRODUCTO);
    SET @NUEVO_PRODUCTO = @NUEVO_PRODCUTO + 1;
    INSERT INTO productos VALUES(NUEVO_PRODUCTO, Descripcion);
END%%

Call sp_crea_producto('seguro de auto');

Select * from productos;

# Trigger para generar duplicado de tabla usuario y asi dejar los nuevos usuarios para controlar que tengan productos asignados
CREATE TABLE Usuario_log (Fecha date not null, Usuario varchar(45),
Id_Cliente INT NOT NULL PRIMARY KEY,
CUIL_CUIT VARCHAR(15) NOT NULL, Nomb VARCHAR (50) NOT NULL,
Apellido VARCHAR(50) NOT NULL);

CREATE TRIGGER log_usuario
AFTER INSERT ON usuario
FOR EACH ROW
INSERT INTO usuario_log(fecha, usuario, Id_cliente, CUIL_CUIT, Nomb, Apellido) 
values(NOW(),session_user(),NEW.Id_Cliente,NEW.CUIL_CUIT,NEW.Nomb,NEW.Apellido);

#trigger de vencimiento de productos

DELIMITER %%
CREATE TRIGGER chequeo_fecha_de_vencimiento
BEFORE INSERT ON servicios_contratados
FOR EACH ROW
BEGIN
	DECLARE msg VARCHAR(250);
    IF (NEW.FecVenc < NOW()) THEN
		SET msg = 'Producto ya vencido';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
   END IF;
END%%


