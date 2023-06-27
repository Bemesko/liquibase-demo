--liquibase formatted sql

--changeset your.name:1 labels:example-label context:example-context
--comment: example comment
CREATE TABLE person (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT
);
--rollback DROP TABLE person;

--changeset your.name:2 labels:example-label context:example-context
--comment: example comment
CREATE TABLE company (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  address VARCHAR(200)
);
--rollback DROP TABLE company;

--changeset other.dev:3 labels:example-label context:example-context
--comment: example comment
ALTER TABLE person
ADD country VARCHAR(50);
--rollback ALTER TABLE person DROP COLUMN country;

