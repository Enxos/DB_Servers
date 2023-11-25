DROP TABLE autok;
DROP TABLE felhasznalok;
DROP TABLE kolcsonzesek;
DROP TABLE alkalmazottak;
DROP TABLE helyszinek;
DROP TABLE kategoriak;

create table autok (
	id BIGSERIAL NOT NULL PRIMARY KEY,
    rendszam ,
    old rendszamok array - lista,
	color NUMERIC(19, 2) NOT NULL,
    make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	color NUMERIC(19, 2) NOT NULL
);

create table felhasznalok (
    id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(7) NOT NULL,
	email VARCHAR(100),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_id BIGINT REFERENCES car (id),
	UNIQUE(email),
    UNIQUE(car_id)
);

create table kolcsonzesek (
	id BIGSERIAL NOT NULL PRIMARY KEY,


);

create table alkalmazottak (
	id BIGSERIAL NOT NULL PRIMARY KEY,


);

create table helyszinek (
	id BIGSERIAL NOT NULL PRIMARY KEY,


);

create table kategoriak (
	id BIGSERIAL NOT NULL PRIMARY KEY,


);

insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Fernanda', 'Beardon', 'Female', 'fernandab@is.gd', '1953-10-28', 'Comoros');
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Omar', 'Colmore', 'Male', null, '1921-04-03', 'Finland');
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('John', 'Matuschek', 'Male', 'john@feedburner.com', '1965-02-28', 'England');

insert into car (make, model, price) values ('Land Rover', 'Sterling', '87665.38');
insert into car (make, model, price) values ('GMC', 'Acadia', '17662.69');


UPDATE person SET car_id = 2 WHERE id = 1;
UPDATE person SET car_id = 1 WHERE id = 2;