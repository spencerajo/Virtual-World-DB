--7    List the username, character name, and species of the character with the highest point total: 

create view maxpoint as 
select max(tot_point) as m from character; 

create view charanduser as 
select distinct username, name_of_char, species, tot_point, m from
usr, character, maxpoint where
character.email = usr.email;

select username, name_of_char, species from 
charanduser 
where charanduser.m = charanduser.tot_point; 