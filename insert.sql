---альбом
insert into album
values (1, 'Meteora', 2003), (2, 'A Thousand Suns', 2010), (3, 'House Of Zef', 2020), (4, 'Jordi', 2021),
(5, 'Blackest Blue', 2021), (6, 'Planet Zero', 2022), (7, 'Amaryllis', 2012), (8, 'Explosions', 2022), (9, 'Outsider', 2018)

---исполнитель
insert into artist
values (1, 'Linkin Park'), (2, 'Three Days Grace'), (3, 'Shinedown'), (4, 'Die Antwoord'), (5, 'Maroon 5'), (6, 'Morcheeba')

---жанр
insert into genre
values (1, 'Alternative metal'), (2, 'Nu metal'), (3, 'Post-grunge'), (4, 'Trip-hop'), (5, 'Electronic music'), 
(6, 'Pop rock'), (7, 'Alternative hip hop')

---трек
insert into track 
values (1, 1, 'Breaking the Habit', '3:16'), (2, 1, 'Faint', '2:42'), (3, 1, 'Numb', '3:08'),
(4, 2, 'Waiting for the End', '3:51'), (5, 2, 'The Requiem', '2:01'),
(6, 9, 'The Abyss','4:09'), (7, 9, 'Right Left Wrong', '3:57'),
(8, 8, 'Neurotic', '3:18'), (9, 8, 'No Tomorrow', '2:53'), (10, 8, 'So Called Life', '3:26'),
(11, 7, 'For My Sake', '3:47'), (12, 6, 'No Sleep Tonight', '2:31'), (13, 6, 'Dead Don''t Die', '3:15'),
(14, 5, 'Cut My Heart Out', '5:02'), (15, 5, 'The Moon', '3:29'), (16, 5, 'Falling Skies', '3:09'),
(17, 4, 'Nobody''s Love', '3:31'), (18, 3, 'When The Sun Goes Out', '2:20')

---сборник
insert into collection 
values (1, 'Greatest hits', 2020), (2, 'Top 2021', 2021), (3, 'Linkin Park: The best',2019), 
(4, 'Best of 2020''s', 2022)

---связь жанр и артист
insert into genreartist 
values (1, 1), (2, 1), (1, 2), (3, 2), (3, 3), (7, 4), (6, 5), (4, 6), (5, 6)

---связь артист и альбом
insert into artistalbum 
values (1, 1), (1, 2), (2, 8), (2, 9), (3, 7), (3, 6), (4, 3), (5, 4), (6, 5)

---связь сборник и трек
insert into collectiontrack 
values (3, 1), (9, 1), (11, 1),
(14, 2), (17, 2),
(2, 3), (1, 3), (4, 3),
(15, 4), (17, 4),(18, 4)