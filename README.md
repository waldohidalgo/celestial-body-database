# Build a Celestial Bodies Database

Repositorio con el archivo **universe.sql** el cual contiene la base de datos con la que aprobé el primer proyecto requisito obligatorio para obtener la [Relational Database Certification](https://www.freecodecamp.org/learn/relational-database/) de freecodecamp.

Como el objetivo del proyecto no es aprender astronomía sino estructurar una base de datos usando PostgreSQL, he utilizado nombres de columnas y data en tablas del tipo genérico o placeholder las cuales bien pueden ser reemplazadas por términos significativos en una aplicación real.

## Tabla de Contenidos

- [Build a Celestial Bodies Database](#build-a-celestial-bodies-database)
  - [Tabla de Contenidos](#tabla-de-contenidos)
  - [Instrucciones](#instrucciones)
  - [Proyecto Aprobado](#proyecto-aprobado)
  - [All Test Passed](#all-test-passed)

## Instrucciones

El proyecto consiste en realizar lo siguiente:

- You should create a database named universe

- Be sure to connect to your database with \c universe. Then, you should add tables named galaxy, star, planet, and moon

- Each table should have a primary key

- Each primary key should automatically increment

- Each table should have a name column

- You should use the INT data type for at least two columns that are not a primary or foreign key

- You should use the NUMERIC data type at least once

- You should use the TEXT data type at least once

- You should use the BOOLEAN data type on at least two columns

- Each "star" should have a foreign key that references one of the rows in galaxy

- Each "planet" should have a foreign key that references one of the rows in star

- Each "moon" should have a foreign key that references one of the rows in planet

- Your database should have at least five tables

- Each table should have at least three rows

- The galaxy and star tables should each have at least six rows

- The planet table should have at least 12 rows

- The moon table should have at least 20 rows

- Each table should have at least three columns

- The galaxy, star, planet, and moon tables should each have at least five columns

- At least two columns per table should not accept NULL values

- At least one column from each table should be required to be UNIQUE

- All columns named name should be of type VARCHAR

- Each primary key column should follow the naming convention table_name_id. For example, the moon table should have a primary key column named moon_id

- Each foreign key column should have the same name as the column it is referencing

## Proyecto Aprobado

![Proyecto aprobado](./approved.webp)

## All Test Passed

![All Test Passed](./all_passed.webp)
