--5    Give the character name and level of each character that resides in two or more villages: 

create view temp as
select lives_at.name_of_char, lives_at.sett_name, tot_point as lvl from 
village, lives_at, character where 
village.sett_name = lives_at.sett_name and character.name_of_char = lives_at.name_of_char; 

create view counttemp as 
select count(name_of_char) as j, name_of_char from temp group by name_of_char; 

create view counttemp2 as
select max(count(name_of_char)) as i from temp group by name_of_char; 

select distinct temp.name_of_char, lvl from 
temp, counttemp, counttemp2 where 
temp.name_of_char = counttemp.name_of_char and counttemp.j = counttemp2.i;