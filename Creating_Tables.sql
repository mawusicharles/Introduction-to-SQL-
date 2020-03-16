-- creating a table and inserting values to the table
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
insert into shoes(ID
, Brand
, OtherTypes
, Color
, Price
, Dessc
)
values(
"1245658754"
, "Addidas"
, "addisplank"
, "black"
,"150.00"
, null);
select * from city; 
-- filtering data example 
select * from city 
where Population<="5000";

select Name, CountryCode from city where District = "Hamilton";

select * from city where CountryCode = "AFG";

 select * from city 
where CountryCode <> "AFG";

 select * from city where Population between "500" and "5000";
 
 -- applying advanced filitering (in, and, not , or )
 
select * from city where (CountryCode = "AFG" or CountryCode= "NLD") and Population <=500000;
select * from city where Population <=500000;
select * from city where not CountryCode="AFG" and Not CountryCode="NLD";

-- Using wild cards 

select * from city where CountryCode like "%L" order by Population asc;

-- Basic operations (addition multiplication and devision)
select Name, (population/100000) as populatio_per100000 from city;
select *,(population/100000) as populatio_per100000  from city ;
-- aggregate operations
select count(*) as totalcouuntry from city;
select count(Population) as totalcouuntry from city;
select sum(Population) as totalpopulation from city;
select*, avg(Population) as averagepulation from city
group by CountryCode ;
select* from city where Population = 42 ; 

select*  from world.city
	where CountryCode in  ( select CountryCode
    from world.countrylanguage 
    where Language = "English");
    
-- joining three tables (inner joins)
select o.Continent, o.Region, o.Code, o.SurfaceArea, B.Language,
 B.IsOfficial, c.District, c.name
	from (( world.country o inner join world.countrylanguage B
	on o.Code= B.CountryCode)
		inner join world.city c 
        on o.Code=c.CountryCode); 
        
-- Self joints using Aliases 
select L.Language as Lan, B.IsOfficial as off
from world.countrylanguage L , world.countrylanguage B
where L.CountryCode = B.CountryCode;
-- Left join, right join and full outer join/union
select cl.Language , cl.IsOfficial, cl.Percentage, ct.Name , ct.District 
from world.countrylanguage cl 
left join world.city ct 
on cl.CountryCode=ct.CountryCode;

 

