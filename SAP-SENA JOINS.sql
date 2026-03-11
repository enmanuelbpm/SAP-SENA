USE SAP_SENA;

SELECT 
u.id_usuario,
u.nombre_usuario,
r.nombre_rol
FROM usuarios u
INNER JOIN roles r 
ON u.id_rol = r.id_rol;

SELECT 
a.nombre1,
a.apellido1,
i.promedio_notas,
i.porcentaje_asistencia
FROM aprendices a
INNER JOIN indicadores_riesgo i
ON a.id_aprendiz = i.id_aprendiz;

SELECT 
al.tipo_alerta,
al.fecha_generacion,
a.nombre1,
n.nombre_nivel
FROM alertas al
INNER JOIN aprendices a
ON al.id_aprendiz = a.id_aprendiz
INNER JOIN nivel_riesgo n
ON al.id_nivel = n.id_nivel;

SELECT 
s.observacion,
s.fecha_seguimiento,
u.nombre_usuario,
al.tipo_alerta
FROM seguimientos s
INNER JOIN usuarios u
ON s.id_usuario = u.id_usuario
INNER JOIN alertas al
ON s.id_alerta = al.id_alerta;
SELECT 
a.nombre1,
a.apellido1,
i.promedio_notas,
al.tipo_alerta,
n.nombre_nivel,
s.observacion,
u.nombre_usuario
FROM aprendices a
INNER JOIN indicadores_riesgo i
ON a.id_aprendiz = i.id_aprendiz
INNER JOIN alertas al
ON a.id_aprendiz = al.id_aprendiz
INNER JOIN nivel_riesgo n
ON al.id_nivel = n.id_nivel
INNER JOIN seguimientos s
ON al.id_alerta = s.id_alerta
INNER JOIN usuarios u
ON s.id_usuario = u.id_usuario;
