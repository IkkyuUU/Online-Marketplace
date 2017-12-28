use mydb;

create table User (
	userId int primary key auto_increment,
	userName varchar(20) not null,
	firstName varchar(20) not null,
	lastName varchar(20) not null,	
	password varchar(20) not null,
	address varchar(100) not null,
	email varchar(320)
);

create table Project (
	projectId int primary key auto_increment,
	projectName varchar(50),
	projectAddress varchar(100),
	projectType varchar(10),
	projectSize numeric(6, 2),
	clientName varchar(30),
	userId int,
	FOREIGN KEY (userId) REFERENCES User(userId)
);

create table ProductCategory (
	productCategoryId int primary key auto_increment,
	name varchar(20),
	description varchar(200)
);

create table ProductSubCategory (
	prodSubCategoryId int primary key auto_increment,
	name varchar(30),
	description varchar(200),
	productCategoryId int,
	FOREIGN KEY (productCategoryId) REFERENCES ProductCategory(productCategoryId)
);

create table Product (
	productId int primary key auto_increment,
	prodSubCategoryId int,
	manufacture varchar(50),
	series varchar(20),
	model varchar(30),
	useType varchar(20),
	application varchar(20),
	mountingLocation varchar(10),
	modelYear date,
	FOREIGN KEY (prodSubCategoryId) REFERENCES ProductSubCategory(prodSubCategoryId)
);

create table ProjectDetails (
	projectId int not null,
	productId int not null,
	quantity int,
	priceQuote numeric(6, 2),
	FOREIGN KEY (projectId) REFERENCES Project(projectId) ON DELETE CASCADE,
	FOREIGN KEY (productId) REFERENCES Product(productId) ON DELETE CASCADE,
    PRIMARY KEY (projectId, productId)
);

create table ProductDetail (
	prodDetailId int primary key auto_increment,
	productId int,
	shortDescription varchar(100),
	description varchar(400),
	FOREIGN KEY (productId) REFERENCES Product(productId)
);

create table Specification (
	specId int primary key auto_increment,
	name varchar(20),
	description varchar(100)
);

create table ProductSpecification (
	productId int,
	specId int,
	value int,
	min int,
	max int,
	FOREIGN KEY (productId) REFERENCES Product(productId) ON DELETE CASCADE,
	FOREIGN KEY (specId) REFERENCES Specification(specId) ON DELETE CASCADE,
	PRIMARY KEY (productId, specId),
	CHECK ((value is null) <> (min is null and max is null))
);
