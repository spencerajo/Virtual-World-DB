--8    Double the point total of any character with the skills of both Science and Charisma: 

create view charskill as 
select character.name_of_char, skill, character.email, character.tot_point from 
character, skill_set where 
character.email = skill_set.email and character.name_of_char = skill_set.name_of_char; 

create view f as
select distinct charskill.name_of_char, charskill.email, charskill.skill, charskill.tot_point from
charskill, (select name_of_char from charskill where
skill = 'Science' or skill = 'Charisma')i where charskill.name_of_char = i.name_of_char; 

update character ch
set tot_point = (select distinct character.tot_point * 2 from 
f, character where character.name_of_char = f.name_of_char and f.email = character.email)
where tot_point * 2 in (select distinct character.tot_point * 2 from 
f, character where character.name_of_char = f.name_of_char and f.email = character.email); 

