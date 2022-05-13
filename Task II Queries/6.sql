--6    For each country, give its name, its leader, its capital city, its number of territories and the number of characters that reside in its settlements:

create view x as 
select country.c_name, leader, settlement.terr_id from
country, territory, settlement where
country.c_name = territory.c_name and territory.terr_id = settlement.terr_id; 

create view y as 
select settlement.terr_id, settlement.sett_name, name_of_char from 
settlement, lives_at where 
settlement.sett_name = lives_at.sett_name; 

create view characterslive as 
select distinct x.c_name, leader, x.terr_id, y.sett_name, name_of_char from
x, y where
x.terr_id = y.terr_id order by x.c_name; 

create view num_characters_at as 
select characterslive.c_name, count(characterslive.c_name) as in_country from
characterslive group by characterslive.c_name; 

create view combine as 
select distinct x.c_name, leader, in_country from
x, num_characters_at where
x.c_name = num_characters_at.c_name;

create view terrin as
select count(terr_id) as num_of_terr, country.c_name from 
country, territory where
territory.c_name = country.c_name group by country.c_name, territory.terr_id;

create view captemp as 
select country.c_name, leader, city_name from
country, capital_of where
country.c_name = capital_of.c_name;

select captemp.c_name, combine.leader, city_name as capital, num_of_terr, in_country from 
terrin, captemp, combine where 
terrin.c_name = captemp.c_name and captemp.c_name = combine.c_name and combine.leader = captemp.leader; 
