use SistemaInstitucional;

-- Insertar sedes
INSERT INTO Sedes(ciudad) VALUES("Barranquilla");
INSERT INTO Sedes(ciudad) VALUES("Cartagena");
INSERT INTO Sedes(ciudad) VALUES("Santa Marta");
INSERT INTO Sedes(ciudad) VALUES("Sincelejo");
INSERT INTO Sedes(ciudad) VALUES("Montería");


-- Insertar oficinas Barranquilla
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Biblioteca",1,"bib@uni.edu.co","Servicios de préstamo de libros y reserva de espacios de estudio.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Centro Médico",1,"med_cen@uni.edu.co","Servicios médicos y diagnósticos.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Registro",1,"reg@uni.edu.co","Expedición de certificados y constancias.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Finanzas",1,"money@uni.edu.co","Gestión de presupuesto y pagos.");

-- insertar oficinas Cartagena
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Biblioteca",2,"bib@uni.edu.co","Servicios de préstamo de libros y reserva de espacios de estudio.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Centro Médico",2,"med_cen@uni.edu.co","Servicios médicos y diagnósticos.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Registro",2,"reg@uni.edu.co","Expedición de certificados y constancias.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Finanzas",2,"money@uni.edu.co","Gestión de presupuesto y pagos.");

-- Insertar oficinas Santa Marta
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Biblioteca",3,"bib@uni.edu.co","Servicios de préstamo de libros y reserva de espacios de estudio.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Centro Médico",3,"med_cen@uni.edu.co","Servicios médicos y diagnósticos.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Registro",3,"reg@uni.edu.co","Expedición de certificados y constancias.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Finanzas",3,"money@uni.edu.co","Gestión de presupuesto y pagos.");

-- Insertar oficinas Sincelejo
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Biblioteca",4,"bib@uni.edu.co","Servicios de préstamo de libros y reserva de espacios de estudio.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Centro Médico",4,"med_cen@uni.edu.co","Servicios médicos y diagnósticos.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Registro",4,"reg@uni.edu.co","Expedición de certificados y constancias.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Finanzas",4,"money@uni.edu.co","Gestión de presupuesto y pagos.");

-- Insertar oficinas Monteria
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Biblioteca",5,"bib@uni.edu.co","Servicios de préstamo de libros y reserva de espacios de estudio.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Centro Médico",5,"med_cen@uni.edu.co","Servicios médicos y diagnósticos.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Registro",5,"reg@uni.edu.co","Expedición de certificados y constancias.");
INSERT INTO Oficinas(nombre,id_sede,contacto,descripcion) VALUES("Finanzas",5,"money@uni.edu.co","Gestión de presupuesto y pagos.");

-- Insertar personas

-- Insertar estudiantes
INSERT INTO Personas(nombre,apellidos,tipo,email,contraseña,fecha_nacimiento) VALUES("Juan David", "Castillo Sierra","0","juanchito@gmail.com","123456","2001-11-09");
INSERT INTO Personas(nombre,apellidos,tipo,email,contraseña,fecha_nacimiento) VALUES("Daren", "Diaz Grau","0","chef_oeuvre@gmail.com","123456","2000-10-15");
INSERT INTO Personas(nombre,apellidos,tipo,email,contraseña,fecha_nacimiento) VALUES("Sebastian David", "Ramos Bouchra","0","sebastech@gmail.com","123456","2003-01-01");
INSERT INTO Personas(nombre,apellidos,tipo,email,contraseña,fecha_nacimiento) VALUES("Santiago", "Villamizar Gonzalez","0","santi_2c@gmail.com","123456","2004-08-09");

-- Insertar funcionarios
INSERT INTO Personas(nombre,apellidos,tipo,email,contraseña,fecha_nacimiento) VALUES("Francis", "Blanco Blanco","1","francescoVirgolini@gmail.com","123456","1978-05-12");
INSERT INTO Personas(nombre,apellidos,tipo,email,contraseña,fecha_nacimiento) VALUES("Jose Daniel", "Ocoro Lucumi","1","niche@gmail.com","123456","1962-09-11");

-- Insertar servicios(Uno por oficina, 4 por sede)

-- Barranquilla
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Préstamo de libro",1,15000,"Préstamo de libro por una semana.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Exámen de ETS",2,40000,"Examen de sangre para diagnóstico de ETS.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Certificado de notas",3,17000,"Expedición de certificado de notas.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Compra de Crédito",4,300000,"Compra de un crédito adicional para el semestre vigente.");

-- Cartagena
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Préstamo de libro",5,15000,"Préstamo de libro por una semana.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Exámen de ETS",6,40000,"Examen de sangre para diagnóstico de ETS.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Certificado de notas",7,17000,"Expedición de certificado de notas.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Compra de Crédito",8,300000,"Compra de un crédito adicional para el semestre vigente.");

-- Santa Marta
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Préstamo de libro",9,15000,"Préstamo de libro por una semana.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Exámen de ETS",10,40000,"Examen de sangre para diagnóstico de ETS.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Certificado de notas",11,17000,"Expedición de certificado de notas.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Compra de Crédito",12,300000,"Compra de un crédito adicional para el semestre vigente.");

-- Sincelejo
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Préstamo de libro",13,15000,"Préstamo de libro por una semana.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Exámen de ETS",14,40000,"Examen de sangre para diagnóstico de ETS.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Certificado de notas",15,17000,"Expedición de certificado de notas.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Compra de Crédito",16,300000,"Compra de un crédito adicional para el semestre vigente.");

-- Monteria
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Préstamo de libro",17,15000,"Préstamo de libro por una semana.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Exámen de ETS",18,40000,"Examen de sangre para diagnóstico de ETS.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Certificado de notas",19,17000,"Expedición de certificado de notas.");
INSERT INTO Servicios(nombre,id_oficina,valor,descripcion) VALUES("Compra de Crédito",20,300000,"Compra de un crédito adicional para el semestre vigente.");

