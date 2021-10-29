/* Renombrar tablaa */

ALTER TABLE usuarios RENAME TO users;

/* Cambiar el nombre de una columna */

ALTER TABLE users CHANGE direccion dir VARCHAR(50);

/* Agregar columnas */

ALTER TABLE users ADD edad INT NOT NULL;

/* Borrar columna */

ALTER TABLE users DROP edad;