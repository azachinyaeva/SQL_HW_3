--Название и продолжительность самого длительного трека.

select t.duration, t."name" 
from track t 
where t.duration = (select max(duration) from track)

--Название треков, продолжительность которых не менее 3,5 минут.
select t."name" , duration 
from track t 
where duration >= '3:30'

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select c."name" 
from collection c 
where c.release_year between 2018 and 2020

--Исполнители, чьё имя состоит из одного слова.
select a.artist_name 
from artist a
where a.artist_name not like '% %'

--Название треков, которые содержат слово «мой» или «my».
select name
from track t
where lower(t."name") like '%my%' 
or lower(t."name") like '%мой%' 