--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
with all_ as (
select (select al.album_name from album al where al.id = a2.album_id) as albumname, genre, artist_name
from artist a 
join artistalbum a2 on a2.artist_id = a.id 
join genreartist g on g.artist_id = a.id 
join genre g2 on g2.id = g.genre_id 
)
select albumname from all_
group by artist_name, albumname
having count(genre)>=2
order by 1;

--Наименования треков, которые не входят в сборники.

select t."name"
from track t 
where t.id not in (select c.track_id from collectiontrack c);


--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.

select a.artist_name
from artist a
join artistalbum a2 on a2.artist_id = a.id 
join track t on t.album_id = a2.album_id 
where t.duration in (select min (duration) from track);

--Названия альбомов, содержащих наименьшее количество треков.

select al.album_name 
from album al
join track t on t.album_id = al.id 
where t.album_id in 
		(
		select album_id from track
		group by album_id
		having count (id) = 
			(
			select count(id)
			from track
			group by album_id 
			order by count
			limit 1
			)
		)



