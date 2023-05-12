CREATE TABLE personas(
  id_persona       INTEGER          PRIMARY KEY     AUTOINCREMENT,
  nombre           varchar(50)      NOT NULL,
  primer_apellido  varchar(50)      NOT NULL,
  segundo_apellido varchar(50)      NOT NULL,
  email            varchar(50)      NOT NULL
  );


INSERT INTO personas(nombre, primer_apellido, segundo_apellido, email) VALUES
  ('juan', 'perez', 'gomez', 'juanito@gmail.com'),
  ('carlos', 'peralta', 'dias', 'carlos@gmail.com'),
  ('Miguel', 'Lira', 'Tellez', 'miguel@gmail.com');

SELECT * FROM personas;
