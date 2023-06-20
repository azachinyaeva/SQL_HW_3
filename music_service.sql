CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	genre VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	id SERIAL PRIMARY KEY,
	artist_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	year INT4
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER not null references album(id),
	name VARCHAR(50) NOT null,
	duration TIME
);

CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null,
	release_year INTEGER
);


CREATE TABLE IF NOT EXISTS GenreArtist (
	genre_id INTEGER not null references genre(id),
	artist_id INTEGER not null references artist(id),
	CONSTRAINT pk PRIMARY KEY(genre_id, artist_id)

);
CREATE TABLE IF NOT EXISTS ArtistAlbum (
	artist_id INTEGER not null references artist(id),
	album_id INTEGER not null references album(id),
	PRIMARY KEY(artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
	track_id INTEGER references track(id),
	collection_id INTEGER references collection (id),
	PRIMARY KEY(track_id, collection_id)
);

	