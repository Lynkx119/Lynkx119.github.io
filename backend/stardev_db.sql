create database stardev_db;
use stardev_db;

CREATE TABLE students (
    DNI INT NOT NULL,
    Usuario VARCHAR(45),
    Pass VARCHAR(45),
    Nombre VARCHAR(45),
    Telefono BIGINT,
    Direccion VARCHAR(45),
    Email VARCHAR(45),
    CONSTRAINT pk_cs PRIMARY KEY (DNI)
);

CREATE TABLE cursos (
    ID_Curso INT NOT NULL,
    Nombre VARCHAR(45),
    Categoria VARCHAR(45),
    Precio DOUBLE,
    CONSTRAINT pk_cc PRIMARY KEY (ID_Curso)
);

CREATE TABLE cursos_vendidos (
    ID_Venta INT NOT NULL,
    Fecha DATE,
    Estudiante INT,
    Curso INT,
    CONSTRAINT pk_cv PRIMARY KEY (ID_Venta),
    CONSTRAINT fk_cur FOREIGN KEY (Curso)
        REFERENCES cursos (ID_Curso),
    CONSTRAINT fk_stu FOREIGN KEY (Estudiante)
        REFERENCES students (DNI)
);

