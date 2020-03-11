create table shoes (
ID char(10) primary key, 
Brand char(120) not null, 
OtherTypes char(100) not null, 
Color char(20) not null , 
Price decimal(8, 2) not null , 
Dessc varchar(730) null 
);
INSERT INTO shoes
( ID
, Brand 
, OtherTypes
, Color
, Price
, Dessc)
VALUES
("1822567842"
, "Nike"
,"Nikeairmax"
, "white"
, "200.34"
, null
);

select * from shoes 



 


