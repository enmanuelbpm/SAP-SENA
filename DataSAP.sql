INSERT INTO roles (id_rol, nombre_rol) VALUES
(1, 'Instructor'),
(2, 'Coordinador'),
(3, 'Administrador');

INSERT INTO nivel_riesgo (id_nivel, nombre_nivel, descripcion_nivel) VALUES
(4, 'Verde', 'Riesgo Bajo'),
(5, 'Amarillo', 'Riesgo Medio'),
(6, 'Rojo', 'Riesgo Alto');

INSERT INTO usuarios (id_usuario, nombre_usuario, correo_usuario, id_rol) VALUES
(7, 'carlos.martinez', 'carlos@sap.com', 1),
(8, 'laura.gomez', 'laura@sap.com', 1),
(9, 'andres.torres', 'andres@sap.com', 2),
(10, 'maria.rojas', 'maria@sap.com', 2),
(11, 'admin.sistema', 'admin@sap.com', 3);

INSERT INTO aprendices 
(id_aprendiz, nombre1, nombre2, apellido1, apellido2, tipo_documento, documento, programa_formacion, numero_ficha, estado_riesgo)VALUES
(12,'Juan','David','Perez','Lopez',1,1001,'ADSO',3223899,'Verde'),
(13,'Maria','Fernanda','Gomez','Rios',1,1002,'ADSO',3223899,'Amarillo'),
(14,'Luis','Alberto','Torres','Diaz',1,1003,'ADSO',3223899,'Rojo'),
(15,'Camila','Andrea','Martinez','Ruiz',1,1004,'ADSO',3223899,'Verde'),
(16,'Santiago',NULL,'Ramirez','Ortiz',1,1005,'ADSO',3223899,'Amarillo'),
(17,'Valentina',NULL,'Moreno','Castro',1,1006,'ADSO',3223899,'Verde'),
(18,'Sebastian',NULL,'Hernandez','Mora',1,1007,'ADSO',3223899,'Rojo'),
(19,'Daniela',NULL,'Vargas','Soto',1,1008,'ADSO',3223899,'Verde'),
(20,'Andres',NULL,'Silva','Garcia',1,1009,'ADSO',3223899,'Amarillo'),
(21,'Natalia',NULL,'Rodriguez','Mejia',1,1010,'ADSO',3223899,'Rojo'),
(22,'Miguel',NULL,'Castillo','Reyes',1,1011,'ADSO',3223899,'Verde'),
(23,'Paula',NULL,'Jimenez','Cortes',1,1012,'ADSO',3223899,'Amarillo'),
(24,'Kevin',NULL,'Rojas','Suarez',1,1013,'ADSO',3223899,'Rojo'),
(25,'Laura',NULL,'Herrera','Navas',1,1014,'ADSO',3223899,'Verde'),
(26,'Felipe',NULL,'Mendoza','Lara',1,1015,'ADSO',3223899,'Amarillo'),
(27,'Sara',NULL,'Pineda','Campos',1,1016,'ADSO',3223899,'Verde'),
(28,'Diego',NULL,'Cabrera','Leon',1,1017,'ADSO',3223899,'Rojo'),
(29,'Juliana',NULL,'Acosta','Bermudez',1,1018,'ADSO',3223899,'Verde'),
(30,'Cristian',NULL,'Parra','Guzman',1,1019,'ADSO',3223899,'Amarillo'),
(31,'Manuela',NULL,'Salazar','Franco',1,1020,'ADSO',3223899,'Rojo');

INSERT INTO indicadores_riesgo (id_indicador, promedio_notas, porcentaje_asistencia, fecha_calculo, id_aprendiz)VALUES
(32,4.5,95,'2026-02-01',12),
(33,3.2,80,'2026-02-01',13),
(34,2.1,60,'2026-02-01',14),
(35,4.0,92,'2026-02-01',15),
(36,3.4,75,'2026-02-01',16),
(37,4.3,90,'2026-02-01',17),
(38,2.5,55,'2026-02-01',18),
(39,4.6,97,'2026-02-01',19),
(40,3.0,78,'2026-02-01',20),
(41,2.2,58,'2026-02-01',21),
(42,4.1,93,'2026-02-01',22),
(43,3.3,76,'2026-02-01',23),
(44,2.4,62,'2026-02-01',24),
(45,4.7,98,'2026-02-01',25),
(46,3.5,82,'2026-02-01',26),
(47,4.2,91,'2026-02-01',27),
(48,2.0,50,'2026-02-01',28),
(49,4.8,99,'2026-02-01',29),
(50,3.1,79,'2026-02-01',30),
(51,2.3,57,'2026-02-01',31);

INSERT INTO alertas (id_alerta, tipo_alerta, fecha_generacion, motivo_alerta, id_aprendiz, id_nivel)VALUES
(52,'Academico','2026-02-02','Buen rendimiento',12,4),
(53,'Academico','2026-02-02','Bajo promedio',13,5),
(54,'Academico','2026-02-02','Riesgo alto por notas',14,6),
(55,'Academico','2026-02-02','Desempeño estable',15,4),
(56,'Academico','2026-02-02','Asistencia irregular',16,5),
(57,'Academico','2026-02-02','Buen desempeño',17,4),
(58,'Academico','2026-02-02','Inasistencias frecuentes',18,6),
(59,'Academico','2026-02-02','Excelente promedio',19,4),
(60,'Academico','2026-02-02','Rendimiento medio',20,5),
(61,'Academico','2026-02-02','Posible desercion',21,6),
(62,'Academico','2026-02-02','Buen desempeño',22,4),
(63,'Academico','2026-02-02','Requiere seguimiento',23,5),
(64,'Academico','2026-02-02','Riesgo critico',24,6),
(65,'Academico','2026-02-02','Excelente rendimiento',25,4),
(66,'Academico','2026-02-02','Bajo rendimiento',26,5),
(67,'Academico','2026-02-02','Buen desempeño',27,4),
(68,'Academico','2026-02-02','Muy baja asistencia',28,6),
(69,'Academico','2026-02-02','Excelente promedio',29,4),
(70,'Academico','2026-02-02','Asistencia media',30,5),
(71,'Academico','2026-02-02','Riesgo alto',31,6);

INSERT INTO seguimientos(id_seguimiento, observacion, fecha_seguimiento, id_alerta, id_usuario)VALUES
(72,'Se cita a orientacion','2026-02-03',54,7),
(73,'Seguimiento academico','2026-02-03',56,7),
(74,'Remision a bienestar','2026-02-03',58,9),
(75,'Plan de mejoramiento','2026-02-03',61,9),
(76,'Reunion con coordinador','2026-02-03',64,8),
(77,'Evaluacion continua','2026-02-04',53,7),
(78,'Compromiso firmado','2026-02-04',60,8),
(79,'Apoyo psicosocial','2026-02-04',69,9),
(80,'Seguimiento mensual','2026-02-04',66,10),
(81,'Monitoreo asistencia','2026-02-04',63,8),
(82,'Refuerzo academico','2026-02-05',70,7),
(83,'Entrevista personal','2026-02-05',71,9),
(84,'Plan de recuperacion','2026-02-05',57,7),
(85,'Revision desempeño','2026-02-05',59,8),
(86,'Seguimiento final','2026-02-05',55,10);