--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
	--SELECT artist.ArtistName, genre.Label FROM Artist 
	--LEFT JOIN Album on album.ArtistId =artist.id
	--LEFT JOIN Genre on genre.id = album.GenreId
	--WHERE genre.Label = 'Jazz' OR  genre.Label ='Rock'
	--ORDER BY genre.Label;

--Write a SELECT statement that lists the Albums with no songs
--SELECT album.Title FROM Album
--LEFT JOIN Song on album.Id  = song.AlbumId
--WHERE song.AlbumId IS Null;

--10
--SELECT artist.ArtistName, album.Title, song.Title FROM Artist
--LEFT JOIN Album on album.ArtistId = artist.Id
--LEFT Join Song on song.AlbumId = album.Id
--WHERE album.Title = 'The Black Album';

--11
--Select * FROM song;

--SELECT album.title, COUNT(song.title) as '# of Songs' FROM Album 
--LEFT JOIN Song on album.id = song.AlbumId
--Group by album.Title;

--12
--Select artist.ArtistName, Count(song.Title) AS '#ofSongs' FROM Artist
--LEFT JOIN Song on artist.Id = song.ArtistId
--Group by artist.ArtistName

--Select ArtistId from Song Group By ArtistId

--13
--SELECT genre.[label], Count(song.Title) as '# of Songs' FROM Genre
--LEFT JOIN Song on genre.id = song.GenreId
--Group By genre.[label]

--14
--?????
--SELECT Artist.Id, Artist.ArtistName, COUNT(Album.id) AS '# Of Labels' FROM Artist
--LEFT JOIN Album on artist.Id = album.ArtistId
--Group by album.[Label]
--Having COUNT (DISTINCT Album.id) >1; 

--15
--Select Title, MAX(AlbumLength) FROM Album;


--16
Select Title, MAX(SongLength) FROM Song;