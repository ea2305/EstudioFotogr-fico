#call insert_user("asd","Elihu","salle","tuxtla",1234567890,3);
DELIMITER $
CREATE PROCEDURE insert_user (IN dni VARCHAR(45),IN nombre VARCHAR(45),IN direccion VARCHAR(45),IN poblacion VARCHAR(45),IN telefono INT(10),IN nivel INT)
BEGIN 

	#Insertamos los datos en la tabla fotografos
	INSERT INTO `estudio`.`FOTOGRAFO`
	(`idFotografo`,
	`dni`,
	`nombre`,
	`direccion`,
	`poblacion`,
	`nivel`)
	VALUES
	(NULL,dni,nombre,direccion,poblacion,nivel);
	
    #Insertamos los datos en la tabla de telefonos de fotografos
    INSERT INTO `estudio`.`TELEFONO_FOTOGRAFO`
	(`idFotografo`,
	`telefono`)
	VALUES
	(LAST_INSERT_ID(),telefono);

END $