CREATE DATABASE normalizacion;

\c normalizacion

CREATE TABLE autor(
    id_autor SERIAL,
    nombre_autor VARCHAR(50),
    PRIMARY KEY (id_autor)
);

CREATE TABLE editorial(
    id_editorial SERIAL,
    nombre_editorial VARCHAR(50),
    PRIMARY KEY (id_editorial)
);

CREATE TABLE libro(
    titulo VARCHAR(100),
    id_libro INT,
    id_editorial INT,
    PRIMARY KEY (id_libro),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
    FOREIGN KEY (id_editorial) REFERENCES editorial(id_editorial)
);

CREATE TABLE libro_autor(
    id_libro_autor SERIAL,
    id_libro INT,
    id_autor INT,
    PRIMARY KEY (id_libro_autor),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

CREATE TABLE lector(
    id_lector SERIAL,
    nombre_lector VARCHAR(50),
    PRIMARY KEY (id_lector)
);

CREATE TABLE libro_lector(
    id_libro_lector SERIAL,
    id_libro INT,
    id_lector INT,
    fecha_devolucion DATE,
    PRIMARY KEY (id_libro_lector),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (id_lector) REFERENCES lector(id_lector)
);

INSERT INTO autor(
    nombre_autor
) VALUES(
    'Lambe, C. G'
);

INSERT INTO autor(
    nombre_autor
) VALUES(
    'Tranter, C. J'
);

INSERT INTO autor(
    nombre_autor
) VALUES(
    'Christen, Hans Rudolf'
);

INSERT INTO autor(
    nombre_autor
) VALUES(
    'Serway, Raymond A'
);

INSERT INTO autor(
    nombre_autor
) VALUES(
    'Murray Spiegel'
);

INSERT INTO autor(
    nombre_autor
) VALUES(
    'Voevodin, Valentin V'
);

INSERT INTO editorial(
    nombre_editorial
) VALUES(
    'UTHEA'
);

INSERT INTO editorial(
    nombre_editorial
) VALUES(
    'Reverté'
);

INSERT INTO editorial(
    nombre_editorial
) VALUES(
    'McGrawHill'
);

INSERT INTO editorial(
    nombre_editorial
) VALUES(
    'MIR'
);

INSERT INTO libro(
    titulo,
    id_libro,
    id_editorial
) VALUES(
    'Ecuaciones diferenciasles para ingenieros y cientificos',
    515,
    1
);

INSERT INTO libro(
    titulo,
    id_libro,
    id_editorial
) VALUES(
    'Quimica',
    540,
    2
);

INSERT INTO libro(
    titulo,
    id_libro,
    id_editorial
) VALUES(
    'Fisica',
    530,
    3
);

INSERT INTO libro(
    titulo,
    id_libro,
    id_editorial
) VALUES(
    'Estadistica',
    519,
    3
);

INSERT INTO libro(
    titulo,
    id_libro,
    id_editorial
) VALUES(
    'Algebra Lineal',
    512,
    4
);

INSERT INTO libro_autor(
    id_libro,
    id_autor
) VALUES(
    515,
    1
);

INSERT INTO libro_autor(
    id_libro,
    id_autor
) VALUES(
    515,
    2
);

INSERT INTO libro_autor(
    id_libro,
    id_autor
) VALUES(
    540,
    3
);

INSERT INTO libro_autor(
    id_libro,
    id_autor
) VALUES(
    530,
    4
);

INSERT INTO libro_autor(
    id_libro,
    id_autor
) VALUES(
    519,
    5
);

INSERT INTO libro_autor(
    id_libro,
    id_autor
) VALUES(
    512,
    6
);

INSERT INTO lector(
    nombre_lector
) VALUES(
    'Pérez Gómez, Juan'
);

INSERT INTO lector(
    nombre_lector
) VALUES(
    'Ortega Pereira, Margarita'
);

INSERT INTO lector(
    nombre_lector
) VALUES(
    'Garcia Contreras, Rosa'
);

INSERT INTO lector(
    nombre_lector
) VALUES(
    'Lopez Molina, Ana'
);

INSERT INTO libro_lector(
    id_libro,
    id_lector,
    fecha_devolucion
) VALUES(
    515,
    1,
    '2019-09-15'
);

INSERT INTO libro_lector(
    id_libro,
    id_lector,
    fecha_devolucion
) VALUES(
    540,
    2,
    '2019-08-23'
);

INSERT INTO libro_lector(
    id_libro,
    id_lector,
    fecha_devolucion
) VALUES(
    530,
    3,
    '2019-09-24'
);

INSERT INTO libro_lector(
    id_libro,
    id_lector,
    fecha_devolucion
) VALUES(
    519,
    4,
    '2019-09-18'
);

INSERT INTO libro_lector(
    id_libro,
    id_lector,
    fecha_devolucion
) VALUES(
    512,
    1,
    '2019-09-17'
);