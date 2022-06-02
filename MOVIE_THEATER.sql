create table Movie  (
	movie_id INT NOT NULL PRIMARY KEY, 
	title VARCHAR(50),
	description VARCHAR(50),
	duration INTEGER,
	genre VARCHAR(20)
	);

	
create table movie_theater (
	theater_id INT NOT NULL PRIMARY key,
	theater_name VARCHAR(50),
	theater_city VARCHAR(50),
	hall_number int NOT null,
	FOREIGN KEY(movie_id) REFERENCES Movie(id)
	);

CREATE TABLE customer ( 
customer_id SERIAL primary key,
ticket_quantity INTEGER,
total_price_paid NUMERIC(3,2)
);


create table showtimes  (
	showtime_id INT NOT NULL, 
	start_time TIMESTAMP,
	FOREIGN KEY(theater_id) REFERENCES Theater(id)
	); 

insert into Theater (theater_name) VALUES ("AMC"),("Cinemark"), ("IMAX");

insert into showtimes (theater_id, theater_name,start_time) VALUES (1, 1,21:00), (1, 5,22:00), (1, 3,16:30);
insert into showtimes (theater_id, theater_name,start_time) VALUES (2, 3,20:00), (4, 5,15:45), (3, 3,11:00);
insert into showtimes (theater_id, theater_name,start_time) VALUES (5, 3,12:00), (1, 4,17:00), (1, 2,9:00);


insert into Movie (movie_name) VALUES 
	("Midsommar", 150), 
	("Avatar", 140),
	("Spirited Away",180);

insert into customer (customer_id, customer_name, ticket_quantity,total_price_paid) VALUES (12, "Natasha Koshka"), (1)(10.50);
insert into customer (customer_id, customer_name, ticket_quantity,total_price_paid) VALUES (13, "Alexander Grave"), (3)(31.50));
insert into customer (customer_id, customer_name, ticket_quantity,total_price_paid) VALUES (14, "Mayumi Yako"), (4)(42.00));
