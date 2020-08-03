
--Query all of the entries in the Genre table
SELECT * FROM Genre;

--Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('My Rat', 2020);


--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT s.Title, ar.ArtistName, al.Title FROM Artist ar
JOIN Song s ON s.ArtistId = ar.Id
JOIN Album al ON s.AlbumId = al.Id
WHERE ar.ArtistName='My Rat';

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT Album.Title AS 'Album Title',
COUNT(Song.Title) AS 'Number of Songs' FROM Album
JOIN Song ON Song.AlbumId = Album.Id
GROUP BY Album.Title;





--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT Title, AlbumLength FROM Album WHERE AlbumLength=(SELECT MAX(AlbumLength) FROM Album);