/*INNER JOIN*/
SELECT * FROM departamentos d JOIN empleados e ON d.Id = e.DepartamentoId;
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d 
JOIN empleados e ON d.Id = e.DepartamentoId;

/*LEFT JOIN*/
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d 
LEFT JOIN empleados e ON d.Id = e.DepartamentoId;
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d 
RIGHT JOIN empleados e ON d.Id = e.DepartamentoId;

/*FULL JOIN*/
SELECT Id, empleados.Nombre, departamentos.Nombre AS "Nombre de departamento" FROM departamentos
FULL JOIN empleados ON departamentos.Id = empleados.DepartamentoId;

/*Ejercicio mostrar, id, nombre del departamento y cuántos empleados hay de cada departamento*/
SELECT Id, departamentos.Nombre, COUNT(empleados.Nombre) as "Número de empleados" FROM departamentos 
JOIN empleados ON departamentos.Id = empleados.DepartamentoId GROUP BY departamentos.Nombre;
 
SELECT Id, departamentos.Nombre, COUNT(empleados.Nombre) as "Número" FROM departamentos 
JOIN empleados ON departamentos.Id = empleados.DepartamentoId GROUP BY departamentos.Nombre
ORDER BY Número DESC;