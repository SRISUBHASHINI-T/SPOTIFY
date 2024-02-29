use project;

--	READ DATA
SELECT * FROM spotify;

-- TOTAL SONGS: TO GET A COUNT OF TOTAL SONGS -- 

select  count(*) from spotify;
-- POPULAR SONGS IN THE YEAR 2023 --
select * from spotify where (Popularity>'90') and (ReleaseDate = '2023')order by Title;

-- HOW MANY SONGS RELEASED IN THE YEAR 2022 --
select count(*) from spotify where ReleaseDate = '2022';

-- GROUP BY --
select count(*) from spotify where ReleaseDate in ('2023','2022','2020') group by ReleaseDate;

-- CLIENT ASKS FOR SONG WITH MAXIMUM ACOUSTICNESS --
select * from spotify where acousticness=(select max(acousticness)from spotify);

-- LEAST POPULAR SONGS IN 2023 --
select * from spotify where (Popularity<'85') and (ReleaseDate = '2023')order by Title;

-- SONGS RELEASED IN 2023 --
select * from spotify where ReleaseDate = '2023';

-- SONGS RELEASED BETWEEN 2019 TO 2023--
select count(*) from spotify where ReleaseDate between 2019 and 2023;  

-- DETAILS OF SONGS RELEASED BETWEEN 2019 TO 2023--
select * from spotify where ReleaseDate between 2019 and 2023;

-- COUNT OF THE EXPLICIT SONGS --
select count(*) from spotify where Explicit = 'TRUE';

-- GET THE DETAILS OF THE TOP 5 SONGS IN THE LIST --
select * from spotify where top<6;

-- GET THE DETAILS OF THE BOTTOM 5 SONGS IN THE LIST --
select * from spotify where top>44;

-- COUNT OF THE NON-EXPLICIT SONGS --
select count(*) from spotify where Explicit = 'FALSE';

-- SHOW ONLY THE BEDROOM POP GENRE --
select * from spotify where genre = 'bedroom pop';

-- SHOW ONLY THE RAP GENRE --
select * from spotify where genre = 'rap';

-- PRINT ALL THE POPULAR SONGS BY RELEASEDATE --
select * from spotify where (Popularity>'90') and ReleaseDate in ('2023','2022','2021','2020','2019','2017','2016','2014','2013','2004');

-- HOW MANY RAP SONGS IN THE LIST --
select count(*) from spotify where (genre = 'rap') and (ReleaseDate = '2022');

-- SHOW THE K-POP SONGS IN THE LIST --
select * from spotify where genre = 'k-pop';

-- CLIENT ASKS FOR THE MAXIMUM ENERGY IN THE LIST --
select max(energy) from spotify;