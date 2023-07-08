Create Database TLV_5;
Use TLV_5;
CREATE USER 'AdminTLV_5'@'localhost' IDENTIFIED BY 'AdminTLV_5';
GRANT ALL PRIVILEGES ON TLV_5.* TO 'AdminTLV_5'@'localhost';
FLUSH PRIVILEGES;

Create Table usuarios (id_usuario int Primary Key Auto_increment, nombre varchar(50), apellido Varchar(50), contraseña Varchar(50), zona_horaria varchar(50) Default "UTC-3", genero Varchar(50), telefono int);
Create Table ingreso_usuarios ( id_ingreso int Primary Key Auto_increment,id_usuario int, fecha_hora_ingreso DATETIME DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario));
Alter Table usuarios Alter Column zona_horaria set default "UTC-2";


INSERT INTO Usuarios (nombre, apellido, contraseña, zona_horaria, genero, telefono)
VALUES
  ('Juan', 'Pérez', 'contraseña1', 'UTC-2', 'Masculino', '123456789'),
  ('María', 'Gómez', 'contraseña2', 'UTC-2', 'Femenino', '987654321'),
  ('Pedro', 'Sánchez', 'contraseña3', 'UTC-2', 'Masculino', '555555555'),
  ('Laura', 'López', 'contraseña4', 'UTC-2', 'Femenino', '111111111'),
  ('Carlos', 'Rodríguez', 'contraseña5', 'UTC-2', 'Masculino', '999999999'),
  ('Ana', 'Martínez', 'contraseña6', 'UTC-2', 'Femenino', '777777777'),
  ('Jorge', 'González', 'contraseña7', 'UTC-2', 'Masculino', '222222222'),
  ('Sofía', 'Hernández', 'contraseña8', 'UTC-2', 'Femenino', '444444444');
  
  INSERT INTO ingreso_usuarios (id_usuario, fecha_hora_ingreso)
VALUES
  (1, CURRENT_TIMESTAMP),
  (2, CURRENT_TIMESTAMP),                             
  (3, CURRENT_TIMESTAMP),                             
  (4, CURRENT_TIMESTAMP),                            
  (5, CURRENT_TIMESTAMP),
  (6, CURRENT_TIMESTAMP),
  (7, CURRENT_TIMESTAMP),
  (8, CURRENT_TIMESTAMP);
  
  Create Table contactos (id_contacto int Primary Key Auto_increment, id_usuario int, telefono Varchar (15), correo_electronico Varchar(50), FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario));
  
  ALTER TABLE usuarios ADD COLUMN id_contacto INT, ADD FOREIGN KEY (id_contacto) REFERENCES contactos(id_contacto);
  