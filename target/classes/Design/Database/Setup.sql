

CREATE TABLE pirates (
	id serial primary key, 
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(50) not null unique,
	password varchar(50) not null
	
);
CREATE TABLE products (
	name varchar(50) primary key,
	price float not null,
	category varchar(50) not null
);


CREATE TABLE locations (
	name varchar(50) primary key,
	coordinates varchar(100) not null
	
);

create table inventory(
	product_name varchar(50) references products(name),
	store_location varchar(50) references locations(name),
	quantity int not null default 0,
	constraint inventory_item_pkey
		PRIMARY KEY(store_location, product_name)
);

create table orders (
	id serial primary key,
	store_location varchar(50) references locations(name),
	pirate_id int references pirates(id),
	total_price float,
	time_of_purchase timestamp default NOW()
);

create table line_items (
	product_name varchar(50) references products(name),
	quantity int not null default 0
);

