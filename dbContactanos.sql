/* Eleminar base de datos */
DROP DATABASE IF EXISTS db_landing_page;

/* Crear base de datos dbRestaurante */
CREATE DATABASE IF NOT EXISTS db_landing_page;

/* Poner en uso la base de datos */
USE db_landing_page;

/* Mostrar dbContactarnos */
SELECT DATABASE ();

/* Crear tabla contactanos */
CREATE TABLE CONTACTANOS (
ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
NOMCON VARCHAR(200),
CORRCON VARCHAR(100),
ASUCON VARCHAR(150),
DESCON TEXT
);

/* Insertar registros */
INSERT INTO CONTACTANOS (NOMCON, CORRCON, ASUCON, DESCON)
VALUES ('Lucia Vega', 'lucia.vega@gmail.com', 'Matricula', 'Solicitud de matricula para mi menor hijo.');

/* Listar los registros de la tabla CONTACTANOS */
SELECT * FROM CONTACTANOS;