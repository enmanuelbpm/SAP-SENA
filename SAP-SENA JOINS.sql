CREATE DATABASE IF NOT EXISTS SAP_SENA;
USE SAP_SENA;

CREATE TABLE IF NOT EXISTS roles(
id_rol INT NOT NULL UNIQUE PRIMARY KEY,
nombre_rol VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS aprendices(
id_aprendiz INT NOT NULL UNIQUE PRIMARY KEY,
nombre1 VARCHAR(30) NOT NULL,
nombre2 VARCHAR(30),
apellido1 VARCHAR(30) NOT NULL,
apellido2 VARCHAR(30),
tipo_documento INT NOT NULL,
documento INT NOT NULL,
programa_formacion VARCHAR(30),
numero_ficha INT NOT NULL,
estado_riesgo VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS nivel_riesgo(
id_nivel INT NOT NULL UNIQUE PRIMARY KEY,
nombre_nivel VARCHAR(30) NOT NULL,
descripcion_nivel VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuarios(
id_usuario INT NOT NULL UNIQUE PRIMARY KEY,
nombre_usuario VARCHAR(30) NOT NULL,
correo_usuario VARCHAR(30) NOT NULL,
id_rol INT NOT NULL,

CONSTRAINT fk_roles_usuarios FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

CREATE TABLE IF NOT EXISTS indicadores_riesgo(
id_indicador INT NOT NULL UNIQUE PRIMARY KEY,
promedio_notas DECIMAL(10,2) NOT NULL,
porcentaje_asistencia DECIMAL(10,2) NOT NULL,
fecha_calculo DATE NOT NULL,
id_aprendiz INT NOT NULL,

CONSTRAINT fk_aprendices_indicadores_riesgo FOREIGN KEY (id_aprendiz) REFERENCES aprendices(id_aprendiz)
);

CREATE TABLE IF NOT EXISTS alertas(
id_alerta INT NOT NULL UNIQUE PRIMARY KEY,
tipo_alerta VARCHAR(30) NOT NULL,
fecha_generacion DATE NOT NULL,
motivo_alerta VARCHAR(50) NOT NULL,
id_aprendiz INT NOT NULL,
id_nivel INT NOT NULL,

CONSTRAINT fk_aprendices_alertas FOREIGN KEY (id_aprendiz) REFERENCES aprendices(id_aprendiz),
CONSTRAINT fk_nivel_riesgo_alertas FOREIGN KEY (id_nivel) REFERENCES nivel_riesgo(id_nivel)
);

CREATE TABLE IF NOT EXISTS seguimientos(
id_seguimiento INT NOT NULL UNIQUE PRIMARY KEY,
observacion VARCHAR(50) NOT NULL,
fecha_seguimiento DATE NOT NULL,
id_alerta INT NOT NULL,
id_usuario INT NOT NULL,

CONSTRAINT fk_alertas_seguimientos FOREIGN KEY (id_alerta) REFERENCES alertas(id_alerta),
CONSTRAINT fk_usuarios_seguimientos FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

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
