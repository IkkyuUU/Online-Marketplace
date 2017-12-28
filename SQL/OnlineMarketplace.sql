use mydb;

drop table if exists ProjectDetails;
drop table if exists Project;
drop table if exists User;
drop table if exists ProductSpecification;
drop table if exists ProductDetail;
drop table if exists Product;
drop table if exists SubCategorySpecification;
drop table if exists ProductSubCategory;
drop table if exists ProductCategory;
drop table if exists Specification;

create table User (
	userId int primary key auto_increment,
	userName varchar(20) not null,
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
	accessories varchar(50),
	modelYear varchar(10),
	image varchar(1024),
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
	name varchar(100),
	description varchar(500)
);

create table SubCategorySpecification (
	prodSubCategoryId int,
	specId int,
	min int,
	max int,
	FOREIGN KEY (prodSubCategoryId) REFERENCES ProductSubCategory(prodSubCategoryId) ON DELETE CASCADE,
	FOREIGN KEY (specId) REFERENCES Specification(specId) ON DELETE CASCADE,
	PRIMARY KEY (prodSubCategoryId, specId)
);

create table ProductSpecification (
	productId int,
	specId int,
	value int,
	min numeric(6, 2),
	max numeric(6, 2),
	FOREIGN KEY (productId) REFERENCES Product(productId) ON DELETE CASCADE,
	FOREIGN KEY (specId) REFERENCES Specification(specId) ON DELETE CASCADE,
	PRIMARY KEY (productId, specId),
	CHECK ((value is null) <> (min is null and max is null))
);

#Create User
insert into User values(null, 'admin', 'admin', 'address', 'admin@ol.com');
select * from User;

#Create Product Category
insert into ProductCategory values(null, 'Mechanical', null);
insert into ProductCategory values(null, 'Electronic', null);
select * from ProductCategory;

#Create Product Sub-Category
insert into ProductSubCategory values(null, 'HAV Fans', null, 1);
insert into ProductSubCategory values(null, 'Boiler', null, 1);
insert into ProductSubCategory values(null, 'Tool Set', null, 1);
insert into ProductSubCategory values(null, 'Computer', null, 2);
insert into ProductSubCategory values(null, 'Phone', null, 2);
insert into ProductSubCategory values(null, 'TV', null, 2);
select * from ProductSubCategory;

#Product
insert into Product values(null, 1, 'Big Ass', 'Haiku H', 'S3150', 'Commercial', 'Indoor', 'Roof', 'With light', '2014', 'https://www.ultraframe-conservatories.co.uk/image/Fan%2004.jpg');
insert into Product values(null, 1, 'Emerson', 'Luray Eco', 'CF860', 'Commercial', 'Indoor', 'Roof', 'With light', '2016', 'http://s3.amazonaws.com/finehomebuilding.s3.tauntoncloud.com/app/uploads/2016/04/09112136/021235026-ceiling-fan-main.jpg');
insert into Product values(null, 1, 'Minka', 'Aviation', 'F853-RW', 'Commercial', 'Indoor', 'Roof', 'With light', '2015', 'https://cdn.haikuhome.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/a/haiku_h_series_ceiling_fan_60_caramel_bamboo_standard_mount_black_1.jpg');
select * from Product;

#Specification
insert into Specification values(null, 'Airflow(CFM)', null);
insert into Specification values(null, 'Power(W)', null);
insert into Specification values(null, 'Operating voltage(VAC)', null);
insert into Specification values(null, 'Fan Speed(RPM)', null);
insert into Specification values(null, 'Number of fan speeds', null);
insert into Specification values(null, 'Sound at max speed(dBA)', null);
insert into Specification values(null, 'Fan sweep diameter(in)', null);
insert into Specification values(null, 'Height(in)', null);
insert into Specification values(null, 'Weight(lbs)', null);
select * from Specification;

#Product Specification
insert into ProductSpecification values(1, 1, 5467, null, null);
insert into ProductSpecification values(1, 2, null, 1.95, 21.14);
insert into ProductSpecification values(1, 3, null, 100, 240);
insert into ProductSpecification values(1, 4, null, 35, 200);
insert into ProductSpecification values(1, 5, 7, null, null);
insert into ProductSpecification values(1, 6, 35, null, null);
insert into ProductSpecification values(1, 7, 60, null, null);
insert into ProductSpecification values(1, 8, null, 12.3, 57);
insert into ProductSpecification values(1, 9, 13, null, null);

insert into ProductSpecification values(2, 1, 8500, null, null);
insert into ProductSpecification values(2, 2, null, 2.85, 33.00);
insert into ProductSpecification values(2, 3, null, 100, 240);
insert into ProductSpecification values(2, 4, null, 46, 240);
insert into ProductSpecification values(2, 5, 7, null, null);
insert into ProductSpecification values(2, 6, 35, null, null);
insert into ProductSpecification values(2, 7, 60, null, null);
insert into ProductSpecification values(2, 8, null, 12.3, 57);
insert into ProductSpecification values(2, 9, 13, null, null);

insert into ProductSpecification values(3, 1, 6604, null, null);
insert into ProductSpecification values(3, 2, null, 3.69, 25.92);
insert into ProductSpecification values(3, 3, null, 100, 240);
insert into ProductSpecification values(3, 4, null, 60, 240);
insert into ProductSpecification values(3, 5, 7, null, null);
insert into ProductSpecification values(3, 6, 35, null, null);
insert into ProductSpecification values(3, 7, 60, null, null);
insert into ProductSpecification values(3, 8, null, 12.3, 57);
insert into ProductSpecification values(3, 9, 13, null, null);
select * from ProductSpecification;

