/* Poner en uso MATRICULA */
USE dbMatricula;

/* Inserción de registro UBIGEO */
INSERT INTO UBIGEO 
		(CODUBI, DISTUBI, PROVUBI, DEPUBI) 
VALUES 
		('010101', 'Chachapoyas', 'Chachapoyas', 'Amazonas');
        
INSERT INTO UBIGEO 
		(CODUBI, DISTUBI, PROVUBI, DEPUBI) 
VALUES 
		('140416', 'Asia', 'Cañete', 'Lima'),
        ('140403', 'Cerro Azul', 'Cañete', 'Lima'),
        ('140405', 'Chilca', 'Cañete', 'Lima'),
        ('140404', 'Coayllo', 'Cañete', 'Lima'),
        ('140133', 'Jesus Maria', 'Lima', 'Lima'),
        ('140142', 'Los Olivos', 'Lima', 'Lima'),
        ('140115', 'Miraflores', 'Lima', 'Lima'),
        ('140129', 'Santa Rosa', 'Lima', 'Lima'),
        ('140141', 'Villa El Salvador', 'Lima', 'Lima');

/* Listado de registros */
SELECT * FROM dbmatricula.ubigeo;

/* Inserción de registro APODERADO */
INSERT INTO APODERADO 
		(CODAPOD, NOMAPOD, APEAPOD, DIRAPOD, PROAPOD, CELAPOD, EMAAPOD, DNIAPOD, CODUBI) 
VALUES 
		('0101', 'Andrea', 'Rodríguez', 'Av. Paulina Sisneros # 7 Hab. 249', 'Chachapoyas', '900555286', 'paulina@gmail.com', '21665468', '010101');
        
INSERT INTO APODERADO 
		(CODAPOD, NOMAPOD, APEAPOD, DIRAPOD, PROAPOD, CELAPOD, EMAAPOD, DNIAPOD, CODUBI) 
VALUES 
		('0102', 'Antonia', 'Rosario', 'Av. Sofía Olivárez # 8', 'Lima', '917089418', 'renteria@gmail.com', '67798686', '140115'),
        ('0103', 'Hernández', 'Martínez', 'Urb. Cristóbal Otero # 0062', 'Lima', '993909651', 'lcarmona@berrios.com', '3797018C', '140129'),
        ('0104', 'Emiliano', 'Ramírez', 'Urb. Alonso Núñez # 1853 Hab. 938', 'Lima', '924141806', 'alvarez@oquendo.com', '33506858', '140133'),
        ('0105', 'Gonzalo', 'Rodrigo', 'Jr. Santiago Gómez # 44 Piso 7', 'Lima', '946704393', 'daniela@caldera.org', '32188526', '140141'),
        ('0106', 'Victoria', 'Giménez', 'Av. Jimena Ochoa # 46259 Piso 83', 'Lima', '912723225', 'alex82@yahoo.com', '73247876', '140142'),
        ('0107', 'Gustavo', 'Sánchez', 'Av. Adriana Bonilla # 28 Piso 60', 'Cañete', '926362632', 'montero@hotmail.com', '41547084', '140403'),
        ('0108', 'Florencia', 'Belén', 'Cl. Ariana Domínguez # 85873 Piso 79', 'Cañete', '911606024', 'yalmanza@yahoo.com', '6362144E', '140404'),
        ('0109', 'Camila', 'López', 'Urb. Alexander Griego # 83', 'Cañete', '985850993', 'gaitan@ledesma.com', '27999499', '140405'),
        ('0110', 'María', 'Agustina', 'Av. Christopher Arce # 1742', 'Cañete', '934222001', 'rodrigo61@pulido.com', '44619120', '140416'); 

/* Listado de registros */
SELECT * FROM dbmatricula.apoderado;

/* Inserción de registro ESTUDIANTE */
INSERT INTO ESTUDIANTE 
		(CODESTU, NOMESTU, APEESTU, DIRESTU, CELESTU, EMAESTU, DNIESTU, FECNACESTU, CODUBI) 
VALUES 
		('01011', 'Victoria', 'Rodríguez', 'Av. Paulina Sisneros # 7 Hab. 249', '912456071', 'molina@yahoo.com', '67500157', '2003-11-25', '010101');
        
INSERT INTO ESTUDIANTE 
		(CODESTU, NOMESTU, APEESTU, DIRESTU, CELESTU, EMAESTU, DNIESTU, FECNACESTU, CODUBI) 
VALUES 
		('01022', 'Michelle', 'Rosario', 'Av. Sofía Olivárez # 8', '921299547', 'asosa@yahoo.com', '25580960', '1997-02-15', '140115'),
        ('01033', 'Martín', 'Martínez', 'Urb. Cristóbal Otero # 0062', '981932952', 'aaron42@murillo.com', '45454469', '2017-10-05', '140129'),
        ('01044', 'Lola', 'Ramírez', 'Av. Lola Montaño # 69739 Hab. 209', '919026122', 'raguirre@yahoo.com', '51721439', '2007-09-15', '140133'),
        ('01055', 'Ana', 'Rodrigo', 'Jr. Santiago Gómez # 44 Piso 7', '946704393', 'jimenez@yahoo.com', '54063847', '2009-04-05', '140141'),
        ('01066', 'Elías', 'Giménez', 'Av. Jimena Ochoa # 46259 Piso 83', '911017234', 'julia@farias.com', '52288818', '2010-01-01', '140142'),
        ('01077', 'Lorenzo', 'Sánchez', 'Av. Adriana Bonilla # 28 Piso 60', '991444623', 'isabel64@hotmail.com', '32970758', '2013-11-09', '140403'),
        ('01088', 'Samantha', 'Belén', 'Cl. Ariana Domínguez # 85873 Piso 79', '909381466', 'drodarte@almonte.com', '16310146', '2003-12-19', '140404'),
        ('01099', 'Pedro', 'López', 'Cl. Maximiliano Rocha # 3211 Piso 9', '968931106', 'wescobedo@vaca.info', '20976304', '2006-02-20', '140405'),
        ('01100', 'Guadalupe', 'Agustina', 'Av. Christopher Arce # 1742', '911494455', 'gabriela24@gmail.com', '23169121', '2009-06-12', '140416');

/* Listado de registros */
SELECT * FROM dbmatricula.estudiante;

/* Inserción de registro MATRICULA */
INSERT INTO MATRICULA 
		(IDMATR, CODENC, CODAPOD, CODESTU, FECMATR, TIPMATR, GRADMATR, NOTMATR) 
VALUES 
		('10110', '01010', '0101', '01011', '2022-11-03', 'T', '1', '010301');
        
INSERT INTO MATRICULA 
		(IDMATR, CODENC, CODAPOD, CODESTU, FECMATR, TIPMATR, GRADMATR, NOTMATR) 
VALUES 
		('10221', '01011', '0102', '01022', '2022-11-06', 'R', '1', ''),
        ('10332', '01012', '0103', '01033', '2022-11-12', 'R', '4', ''),
        ('10443', '01013', '0104', '01044', '2022-11-20', 'T', '4', '020301'),
        ('10554', '01014', '0105', '01055', '2022-11-09', 'R', '3', ''),
        ('10665', '01015', '0106', '01066', '2022-11-18', 'T', '1', '010302'),
        ('10776', '01016', '0107', '01077', '2022-11-01', 'R', '5', ''),
        ('10887', '01017', '0108', '01088', '2022-11-13', 'R', '4', ''),
        ('10998', '01018', '0109', '01099', '2022-11-17', 'T', '3', '020303'),
        ('11009', '01019', '0110', '01100', '2022-11-10', 'T', '5', '010304');

/* Listado de registros */
SELECT * FROM dbmatricula.matricula;

/* Inserción de registro ENCARGADO DE LA MATRICULA */
INSERT INTO ENCARGADO_MATRICULA 
		(CODENC, NOMENC, APEENC, CELENC, DNIENC, CARENC, EMAENC) 
VALUES 
		('01010', 'Jerónimo', 'Urrutia', '911160133', '26857425', 'Profesor', 'mia@granados.com');
        
INSERT INTO ENCARGADO_MATRICULA 
		(CODENC, NOMENC, APEENC, CELENC, DNIENC, CARENC, EMAENC) 
VALUES 
		('01011', 'Emily', 'Zavala', '917476175', '83341310', 'Profesora', 'matthew@ortiz.com'),
        ('01012', 'María', 'Orozco', '914593837', '37000321', 'Profesora', 'ruelas@yahoo.com'),
        ('01013', 'Abigail', 'Guillen', '902132815', '80848390', 'Profesor', 'josefa52@hotmail.com'),
        ('01014', 'Luciano', 'Correa', '992389102', '42835490', 'Profesor', 'carmona@gmail.com'),
        ('01015', 'Violeta', 'Ortega', '928430696', '92440080', 'Profesora', 'fcavazos@mesa.com'),
        ('01016', 'Isabella', 'Urrutia', '911724061', '12883633', 'Profesora', 'crenteria@ledesma.info'),
        ('01017', 'Juana', 'Gaytán', '961799779', '98983280', 'Profesora', 'amanda@pantoja.com'),
        ('01018', 'Maximiliano', 'Rosario', '911864799', '43947027', 'Profesor', 'olmos@melgar.com'),
        ('01019', 'Antonio', 'Aguilera', '978784634', '12077277', 'Profesor', 'michelle@gmail.com');

/* Listado de registros */
SELECT * FROM dbmatricula.encargado_matricula;

