CREATE DATABASE test;

\c test;

CREATE TABLE users (
  name   text,
  age    integer
);

INSERT INTO users (name, age) VALUES ('foo', 100), ('var', 666);
