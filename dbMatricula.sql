/* Crear base de datos */
CREATE DATABASE dbMatricula;

/* Poner en uso MATRICULA */
USE dbMatricula;

/* Crear tabla UBIGEO */
CREATE TABLE UBIGEO 
(
    CODUBI char(6) NOT NULL COMMENT 'Contiene el codigo identificador de cada ubigeo. Por ejemplo: 1,2,3,etc.',
    DISTUBI varchar(60) NOT NULL COMMENT 'Contiene los distritos de los apoderados o estudiantes de ubigeo.',
    PROVUBI varchar(80) NOT NULL COMMENT 'Contiene las provincias de los apoderados o estudiantes del ubigeo.',
    DEPUBI varchar(60) NOT NULL COMMENT 'Contiene los departamentos de los apoderados o estudiantes del ubigeo.',
    CONSTRAINT UBIGEO_pk PRIMARY KEY (CODUBI)
) COMMENT 'Contiene el ubigeo del estudiante y el apoderado.';

/*Estructura de la tabla*/
SHOW COLUMNS IN UBIGEO;

/* Crear tabla APODERADO */
CREATE TABLE APODERADO
(
    CODAPOD CHAR(5) NOT NULL COMMENT 'Contiene el código de apoderado . ',
    NOMAPOD VARCHAR(50) NOT NULL COMMENT 'Contiene nombres del apoderado',
    APEAPOD VARCHAR(50) NOT NULL COMMENT 'Contiene los apellidos del apoderado. ',
    DIRAPOD VARCHAR(50) NOT NULL COMMENT 'Contiene la dirección de nuestros apoderados ',
    PROAPOD VARCHAR(70) NOT NULL COMMENT 'Contiene la provincia de nuestros apoderados ',
    CELAPOD CHAR(9) NOT NULL COMMENT 'Contiene el celular de nuestros apoderados ',
    EMAAPOD VARCHAR(20) NOT NULL COMMENT 'Contiene el email de nuestros apoderados ',
    DNIAPOD CHAR(8) NOT NULL COMMENT 'Contiene el DNI de nuestros apoderados ',
    CODUBI CHAR(6) NOT NULL COMMENT 'Contiene el identificador de ubigeo previamente registrado en la tabla ubigeo.',
    CONSTRAINT APODERADO_pk PRIMARY KEY (CODAPOD)
) COMMENT 'Contiene datos del apoderado.';

/*Estructura de la tabla*/
SHOW COLUMNS IN APODERADO;

/* Crear tabla ESTUDIANTE */
CREATE TABLE ESTUDIANTE 
(
    CODESTU CHAR(5) NOT NULL COMMENT 'Contiene el código de estudiante. ',
    NOMESTU VARCHAR(50) NOT NULL COMMENT 'Contiene los nombres de estudiante. ',
    APEESTU VARCHAR(50) NOT NULL COMMENT 'Contiene los apellidos del estudiante. ',
    DIRESTU VARCHAR(50) NOT NULL COMMENT 'Contiene la dirección del estudiante.',
    CELESTU CHAR(9) NOT NULL COMMENT 'Contiene el celular del estudiante ',
    EMAESTU VARCHAR(20) NOT NULL COMMENT 'Contiene el email del estudiante',
    DNIESTU CHAR(8) NOT NULL COMMENT 'Contiene el DNI del estudiante',
    FECNACESTU DATE NOT NULL COMMENT 'Contiene la fecha de nacimiento. ',
    CODUBI CHAR(6) NOT NULL COMMENT 'Contiene el identificador de ubigeo previamente registrado en la tabla ubigeo.',
    CONSTRAINT ESTUDIANTE_pk PRIMARY KEY (CODESTU)
) COMMENT 'Contiene datos del estudiante.';

/*Estructura de la tabla*/
SHOW COLUMNS IN ESTUDIANTE;

/* Crear tabla MATRICULA */
CREATE TABLE MATRICULA 
(
    IDMATR CHAR(5) NOT NULL COMMENT 'Contiene el identificador de la matrícula. Por ejemplo: 1,2,3,etc.',
    CODENC CHAR(6) NOT NULL COMMENT 'Contiene el identificador del encargado previamente registrado en la tabla encargado de la matricula.',
    CODAPOD CHAR(5) NOT NULL COMMENT 'Contiene el identificador del apoderado previamente registrado en la tabla apoderado.',
    CODESTU CHAR(5) NOT NULL COMMENT 'Contiene el identificador del estudiante previamente registrado en la tabla estudiante.',
    FECMATR DATE NOT NULL COMMENT 'Contiene la fecha en que se realizo la matrícula.',
    TIPMATR CHAR(1) NOT NULL COMMENT 'Contiene el tipo de matricula: R (renovación matrícula) T (Traslado matrícula)',
    GRADMATR INT NOT NULL COMMENT '1 - 5 (Grados de educación secundaria)',
    NOTMATR CHAR(100) NOT NULL COMMENT 'Contiene la descripción o datos relevantes del proceso de matrícula. Por ejemplo: El código de matricula si es un traslado de otra IE.',
    CONSTRAINT MATRICULA_pk PRIMARY KEY (IDMATR)
) COMMENT 'Contiene datos de la matricula.';

/*Estructura de la tabla*/
SHOW COLUMNS IN MATRICULA;

/* Crear tabla ENCARGADO DE LA MATRICULA */
CREATE TABLE ENCARGADO_MATRICULA 
(
    CODENC CHAR(6) NOT NULL COMMENT 'Contiene el código identificador de cada encargado. Por ejemplo: C0001',
    NOMENC VARCHAR(50) NOT NULL COMMENT 'Contiene los nombres de los encargados.',
    APEENC VARCHAR(50) NOT NULL COMMENT 'Contiene los apellidos de los encargados.',
    CELENC CHAR(9) NOT NULL COMMENT 'Contiene el número del celular de los encargados.',
    DNIENC CHAR(8) NOT NULL COMMENT 'Contiene el DNI de los encargados.',
    CARENC VARCHAR(50) NOT NULL COMMENT 'Contiene los cargos de los encargados.',
    EMAENC VARCHAR(50) NOT NULL COMMENT 'Contiene los email de los encargados.',
    CONSTRAINT ENCARGADO_MATRICULA_pk PRIMARY KEY (CODENC)
) COMMENT 'Contiene los datos relacionados de la encargado de la matricula.';

/*Estructura de la tabla*/
SHOW COLUMNS IN ENCARGADO_MATRICULA;


/*Listado de tablas de la base de datos*/
SHOW TABLES;


/* Crear relación APODERADO_UBIGEO */
ALTER TABLE APODERADO 
	ADD CONSTRAINT APODERADO_UBIGEO 
		FOREIGN KEY APODERADO_UBIGEO (CODUBI)
		REFERENCES UBIGEO (CODUBI);
        
/* Crear relación ESTUDIANTE_UBIGEO */
ALTER TABLE ESTUDIANTE 
	ADD CONSTRAINT ESTUDIANTE_UBIGEO 
		FOREIGN KEY ESTUDIANTE_UBIGEO (CODUBI)
		REFERENCES UBIGEO (CODUBI);

/* Crear relación MATRICULA_APODERADO */
ALTER TABLE MATRICULA 
	ADD CONSTRAINT MATRICULA_APODERADO 
		FOREIGN KEY MATRICULA_APODERADO (CODAPOD)
		REFERENCES APODERADO (CODAPOD);

/* Crear relación MATRICULA_ENCARGADO_MATRICULA */
ALTER TABLE MATRICULA 
	ADD CONSTRAINT MATRICULA_ENCARGADO_MATRICULA 
		FOREIGN KEY MATRICULA_ENCARGADO_MATRICULA (CODENC)
		REFERENCES ENCARGADO_MATRICULA (CODENC);

/* Crear relación MATRICULA_ESTUDIANTE */
ALTER TABLE MATRICULA 
	ADD CONSTRAINT MATRICULA_ESTUDIANTE 
		FOREIGN KEY MATRICULA_ESTUDIANTE (CODESTU)
		REFERENCES ESTUDIANTE (CODESTU);

