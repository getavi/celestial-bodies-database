# 1. Introducción

Este repositorio contiene un proyecto de base de datos llamado "Celestial Bodies Database" como parte del curso de freeCodeCamp: Relational Database. El objetivo es crear y poblar una base de datos llamada universe en PostgreSQL, con tablas relacionadas que representan galaxias, estrellas, planetas, lunas y cometas.

# 2. Requisitos

Para ejecutar este proyecto, necesitarás:

- **PostgreSQL** instalado. Puedes descargarlo desde el siguiente enlace: [PostgreSQL](https://www.postgresql.org/download/)
- Acceso a una terminal o línea de comandos para ejecutar los scripts SQL.

# 3. Estructura de la base de datos

La base de datos se llama universe y contiene al menos 5 tablas:

1. galaxy
2. star
3. planet
4. moon
5. comet

Cada tabla incluye:

- Una columna Primary Key autoincrementada (tipo SERIAL).
- Varias columnas con distintos tipos de datos (INT, NUMERIC, VARCHAR, TEXT, BOOLEAN).
- Llaves Foráneas para relacionar tablas (por ejemplo, star se relaciona con galaxy, planet con star, etc.).
- Reglas de NULL y UNIQUE según las exigencias del proyecto.

# 4. Restaurar la Base de Datos usando el .sql

1. Asegúrate de que el archivo universe.sql esté en tu directorio actual.
2. Ejecuta el comando:

```bash
psql -U postgres < universe.sql
```

o si ya tienes creada la base, puedes hacer:

```bash
psql --username=postgres --dbname=universe < universe.sql
```

# 5. Requisitos Cubiertos

- Base de datos universe creada.
- Tablas galaxy, star, planet, moon y comet con al menos cinco columnas y llaves foráneas.
- Primary Keys autoincrementadas (SERIAL) en cada tabla.
- Tipos de datos usados (INT, NUMERIC, TEXT, BOOLEAN, VARCHAR).
- Columnas no nulas y columnas únicas aplicadas.
- Relaciones:
  - star.galaxy_id → galaxy.galaxy_id
  - planet.star_id → star.star_id
  - moon.planet_id → planet.planet_id
- Cantidad de registros mínimos:

  - galaxy y star: 6 filas cada una.
  - planet: 12 filas.
  - moon: 20 filas.
  - (Más tablas de regalo: comet).
