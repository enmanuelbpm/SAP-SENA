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
