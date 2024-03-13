-- Crear tabla Duenos
CREATE TABLE Duenos (
    ID_dueno INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Telefono VARCHAR(15),
    Direccion VARCHAR(100),
    Correo_electronico VARCHAR(100)
);

-- Crear tabla Especies
CREATE TABLE Especies (
    ID_especie INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50)
);

-- Crear tabla Razas
CREATE TABLE Razas (
    ID_raza INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    ID_especie INT,
    CONSTRAINT fk_especie FOREIGN KEY (ID_especie) REFERENCES Especies(ID_especie)
);

-- Crear tabla Mascotas
CREATE TABLE Mascotas (
    ID_mascota INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Edad INT,
    ID_dueno INT,
    ID_raza INT,
    CONSTRAINT fk_dueno FOREIGN KEY (ID_dueno) REFERENCES Duenos(ID_dueno),
    CONSTRAINT fk_raza FOREIGN KEY (ID_raza) REFERENCES Razas(ID_raza)
);

-- Crear tabla Veterinarios
CREATE TABLE Veterinarios (
    ID_veterinario INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Telefono VARCHAR(15),
    Especialidad VARCHAR(100)
);

-- Crear tabla Citas
CREATE TABLE Citas (
    ID_cita INT PRIMARY KEY AUTO_INCREMENT,
    ID_mascota INT,
    ID_veterinario INT,
    Fecha DATE,
    Hora VARCHAR(10),
    Razon_de_la_cita VARCHAR(200),
    CONSTRAINT fk_mascota FOREIGN KEY (ID_mascota) REFERENCES Mascotas(ID_mascota),
    CONSTRAINT fk_veterinario FOREIGN KEY (ID_veterinario) REFERENCES Veterinarios(ID_veterinario)
);
