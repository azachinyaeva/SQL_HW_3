--Количество исполнителей в каждом жанре.

select g2.genre, count (a.artist_name)
from artist a 
join genreartist g on g.artist_id = a.id 
join genre g2 on g2.id = g.genre_id 
group by g2.genre 
order by 2

--Количество треков, вошедших в альбомы 2019–2020 годов.

select count (t."name")
from track t 
join album a ON a.id = t.album_id 
where a."year" between 2019 and 2020

--Средняя продолжительность треков по каждому альбому.

select avg(t.duration), a.album_name 
from track t 
join album a ON a.id = t.album_id 
group by a.album_name 

--Все исполнители, которые не выпустили альбомы в 2020 году.

select a.artist_name 
from artist a 
join artistalbum a2 on a2.artist_id = a.id 
join album al on al.id = a2.album_id 
where al."year" != 2020
group by a.artist_name 

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

select c."name" 
from collection c 
where c."name" like '%Linkin Park%' 