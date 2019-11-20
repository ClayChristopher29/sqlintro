-- select * from Artist 
-- SELECT * FROM Album ;

-- INSERT INTO Genre (Label) VALUES ('Norwegian Black Metal');

-- SELECT * from Genre;

-- Update Genre SET Label='Norwegian Death Metal' Where id=15;
-- SELECT * FROM GENRE;
-- DELETE FROM Genre Where id=15;
-- SELECT* FROM Genre;

-- Select Label from Genre where id =1;

-- Select Title, SongLength from SONG Where title = 'legs';

-- SELECT Title from song where title LIKE '%gimme%';
 
-- Select song.title, Genre.label from song JOIN genre ON song.GenreId = Genre.Id;

-- select Song.title, Genre.Label, Artist.ArtistName from song Join genre on Song.GenreId=Genre.id Join Artist on Song.ArtistId=Artist.Id;

-- Select Artist.ArtistName, count(song.id) as 'number of songs'
-- From Artist left join song on song.ArtistId = Artist.Id group by Artist.ArtistName;

-- For each of the following exercises, provide the appropriate query. Yes, even the ones that are expressed in the form of questions. Everything from class and the references listed above is fair game.

-- Query all of the entries in the Genre table

-- SELECT * from Album;
-- Delete from Artist from Artist Where id=30;

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
-- INSERT INTO Artist ( ArtistName,YearEstablished) VALUES ('Tony Danza Tap Dancing Extravaganza','1996');
-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
-- -- INSERT into Album (Title, ReleaseDate,AlbumLength,Label,ArtistId,GenreId) VALUES('Danza4: The Alpha-TheOmega','04/02/2012','3245','Black Market Activities','31','2')
-- select * from Song
-- Insert into Song(Title, SongLength,ReleaseDate,GenreId,ArtistId,AlbumId)
-- -- Using the INSERT statement, add some songs that are on that album to the Song table.


-- -- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

-- Select song.title, album.Title, artist.ArtistName from song join Album on song.AlbumId = Album.Id join Artist on song.ArtistId = Artist.Id

-- Select Album.Title, count(song.id) as 'Number of Songs' from album left join song on song.albumid= album.id group by album.title

-- Select Album.AlbumLength, MAX(Album.AlbumLength) as 'longest duration'
-- From album group by AlbumLength;

-- Select Song.songLength,  MAX(song.songLength), Album.Title as 'longest duration'
-- From song  join album on song.albumid=album.id group by songLength;

-- select max(Song.songlength) as 'longest song' from song

select s.title, s.songlength,
s.title from song s
join album a on s.AlbumId =a.id
Where s.SongLength=(select Max(s.SongLength )from song s)
