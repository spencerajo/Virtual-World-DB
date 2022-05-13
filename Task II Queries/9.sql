--9    Remove any villages that do not have any characters residing in them: 

delete from
(select * from village where not exists
(select * from lives_at where village.sett_name = lives_at.sett_name));
