-- Roles y Niveles de Riesgo
INSERT INTO roles VALUES (1, 'Administrador'), (2, 'Instructor');
INSERT INTO nivel_riesgo VALUES (1, 'Bajo', 'Sin riesgo evidente'), (2, 'Alto', 'Riesgo de deserción');

-- Usuarios 
INSERT INTO usuarios VALUES (1, 'Juan_Perez', 'juan@sena.edu.co', 2);

-- Aprendices 
INSERT INTO aprendices VALUES 
(1, 'Carlos', "", 'ibarra', 'rosero', 1, 1001, 'ADSO', 25001, 'Riesgo Alto'),
(2, 'william', 'luna', 'Soto', 'luna', 1, 1002, 'ADSO', 25001, 'Bajo'),
(3, 'yedinson', "", 'Gomez', 'Mora', 1, 1003, 'Multimedia', 25002, 'Riesgo Alto');

INSERT INTO alertas VALUES (1, 'Académica', '2024-05-20', 'Bajo promedio notas', 1, 2);

-- Seguimientos
INSERT INTO seguimientos VALUES (1, 'Se citó a comité pedagógico', '2024-05-21', 1, 1);

SELECT * FROM aprendices;

SELECT nombre1, apellido1, programa_formacion, estado_riesgo 
FROM aprendices 
WHERE estado_riesgo = 'Riesgo Alto';

SELECT tipo_alerta, fecha_generacion, motivo_alerta 
FROM alertas;

SELECT programa_formacion, COUNT(*) AS cantidad_aprendices
FROM aprendices
GROUP BY programa_formacion;

SELECT id_seguimiento, observacion, fecha_seguimiento 
FROM seguimientos 
ORDER BY fecha_seguimiento DESC;