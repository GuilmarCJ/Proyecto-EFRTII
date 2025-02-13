-- 1️⃣ Crear la base de datos
CREATE DATABASE RestauranteDB;
USE RestauranteDB;

-- 2️⃣ Tabla de Usuarios
CREATE TABLE CLIENTES_TBUsuarios (
    CodUsuario INT AUTO_INCREMENT PRIMARY KEY,
    NomUsuario VARCHAR(50) NOT NULL,
    ApeUsuario VARCHAR(50) NOT NULL,
    CorreoUsuario VARCHAR(50) UNIQUE NOT NULL,
    TeleUsuario CHAR(9) UNIQUE NOT NULL CHECK (TeleUsuario LIKE '9%_'), -- Solo números que comiencen con 9
    FecRegistro DATETIME DEFAULT CURRENT_TIMESTAMP -- Fecha de registro
);

-- 3️⃣ Tabla de Seguridad (Login y Contraseñas)
CREATE TABLE SEGURIDAD_TBRegistro (
    CodRegistro INT AUTO_INCREMENT PRIMARY KEY,
    CodUsuario INT NOT NULL,
    UsuarioRegis VARCHAR(50) NOT NULL UNIQUE,
    ContraseñaRegis VARCHAR(255) NOT NULL, -- Contraseña encriptada
    CONSTRAINT FK_CODLOGIN FOREIGN KEY (CodUsuario) 
        REFERENCES CLIENTES_TBUsuarios(CodUsuario) 
        ON DELETE CASCADE
);

-- 4️⃣ Tabla de Reservas de Mesas
CREATE TABLE RESERVACIONES_TBReserva (
    CodReserva INT AUTO_INCREMENT PRIMARY KEY,
    CodUsuario INT NOT NULL,
    FecReserva DATE NOT NULL,
    HoraReserva TIME NOT NULL,
    NumPersonas INT NOT NULL CHECK (NumPersonas > 0),
    EstReserva ENUM('Pendiente', 'Confirmada', 'Cancelada') DEFAULT 'Pendiente',
    ComentReserva VARCHAR(250) NOT NULL,
    FecRegisReserva DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_CODUSUARIO FOREIGN KEY (CodUsuario) 
        REFERENCES CLIENTES_TBUsuarios(CodUsuario) 
        ON DELETE CASCADE
);

-- 📌 📌 Insertar un Usuario con Contraseña
INSERT INTO CLIENTES_TBUsuarios (NomUsuario, ApeUsuario, CorreoUsuario, TeleUsuario)  
VALUES ('Juan', 'Pérez', 'juan.perez@email.com', '912345678');

INSERT INTO SEGURIDAD_TBRegistro (CodUsuario, UsuarioRegis, ContraseñaRegis)  
VALUES (LAST_INSERT_ID(), 'juan.perez', SHA2('12345segura', 256));

-- 📌 📌 Validar Login de un Usuario
SELECT * FROM SEGURIDAD_TBRegistro 
WHERE UsuarioRegis = 'juan.perez' 
AND ContraseñaRegis = SHA2('12345segura', 256);

-- 📌 📌 Insertar una Reserva
INSERT INTO RESERVACIONES_TBReserva (CodUsuario, FecReserva, HoraReserva, NumPersonas, ComentReserva)  
VALUES (1, '2025-03-15', '19:00:00', 4, 'Mesa junto a la ventana');

-- 📌 📌 Ver Reservas de un Usuario
SELECT * FROM RESERVACIONES_TBReserva WHERE CodUsuario = 1;


-- 📌 📌 Eliminar un Usuario (se eliminan también sus credenciales y reservas)
DELETE FROM CLIENTES_TBUsuarios WHERE CodUsuario = 1;
