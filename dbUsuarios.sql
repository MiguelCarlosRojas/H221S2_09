/* Eleminar base de datos */
DROP DATABASE IF EXISTS login;

/* Crear base de datos login */
Create database login;

/* Poner en uso la base de datos */
use login;

/* Crear tabla Usuarios */
create table Usuarios (
id int auto_increment primary key not null,
ingresoUsuario varchar(50),
ingresoContrasenia varchar(50)
);

/* Listar de registros*/
select * from Usuarios;

/* Insertar registros */
Insert into Usuarios (ingresoUsuario, ingresoContrasenia) values('admin','contra2022');

/* Ingreso registros en la tabla Usuarios */
select * from Usuarios where Usuarios.ingresoUsuario ='admin' and Usuarios.ingresoContrasenia='contra2022';
