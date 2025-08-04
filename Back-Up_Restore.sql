-- Para hacer un Back Up de la base de datos utilizamos el comando:
mysqldump -B -u root -p (Nombre base de datos)> (direccion/de /memoria)

-- Guarda triggers and views tambien.
mysqldump -B -u root -p --routines --triggers (Nombre base de datos)> (direccion/de /memoria)

Para Restaurar un back up de la base de datos es decir subir un back up a la base de datos:

source (RutaDelArchivo);
