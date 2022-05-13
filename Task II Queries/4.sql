--4    Give the name, territory climate, and population of the capital city with the highest elevation: 

create view e as 
select * from 
(select max(elevation) as i from 
(select capital_of.c_name, capital_of.city_name, clim_desc, population, elevation from
capital_of, city, territory, settlement where 
capital_of.c_name = territory.c_name and city.city_name = capital_of.city_name and sett_name = city.city_name)), 
(select capital_of.c_name, capital_of.city_name, clim_desc, population, elevation from capital_of, city, territory, settlement where 
capital_of.c_name = territory.c_name and city.city_name = capital_of.city_name and sett_name = city.city_name);

select e.c_name, e.city_name, e.clim_desc, e.population, e.elevation from e
where e.elevation = i; 
