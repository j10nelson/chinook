-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.

SELECT * FROM albums /* -> shows albums*/
/* now need know id */
SELECT id FROM artists WHERE name = 'Queen';
/* id=51*/
SELECT title FROM albums WHERE artist_id = 51;


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT COUNT(*) FROM media_types;
/* =5 media types */
SELECT id, name FROM media_types;
/* shows media types + id -> the one we want is id 3 */
SELECT COUNT(*) FROM tracks WHERE tracks.media_type_id = 3;
/* count = 214*/

-- 3) Find the least expensive track that has the genre "Electronica/Dance".

SELECT id, name FROM genres;
/* id = 15 */

SELECT MIN(unit_price) FROM tracks;
/* MIN 0.99 */

SELECT * FROM tracks WHERE genre_id = 15 AND unit_price = 0.99;

---+----------------------------+----------------------------
 3319 |      259 |       15 |             1 | Instinto Colectivo          |                            |       300564 | 12024875 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.377727
 3320 |      259 |       15 |             1 | Chapa o Coco                |                            |       143830 |  5755478 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.392799
 3321 |      259 |       15 |             1 | Prostituta                  |                            |       359000 | 14362307 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.395457
 3322 |      259 |       15 |             1 | Eu So Queria Sumir          |                            |       269740 | 10791921 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.397601
 3323 |      259 |       15 |             1 | Tres Reis                   |                            |       304143 | 12168015 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.399724
 3324 |      259 |       15 |             1 | Um Lugar ao Sol             |                            |       212323 |  8495217 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.401592
 3325 |      259 |       15 |             1 | Batalha Naval               |                            |       285727 | 11431382 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.403397
 3327 |      259 |       15 |             1 | O Misterio do Samba         |                            |       226142 |  9047970 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.405566
 3328 |      259 |       15 |             1 | Armadura                    |                            |       232881 |  9317533 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.407884
 3329 |      259 |       15 |             1 | Na Ladeira                  |                            |       221570 |  8865099 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.409828
 3330 |      259 |       15 |             1 | Carimbo                     |                            |       328751 | 13152314 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.411864
 3331 |      259 |       15 |             1 | Catimbo                     |                            |       254484 | 10181692 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.413968
 3333 |      259 |       15 |             1 | Chega no Suingue            |                            |       221805 |  8874509 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.41586
 3334 |      259 |       15 |             1 | Mun-Ra                      |                            |       274651 | 10988338 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.417719
 3335 |      259 |       15 |             1 | Freestyle Love              |                            |       318484 | 12741680 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.419664
 3352 |      264 |       15 |             5 | Distance                    | Karsh Kale/Vishal Vaid     |       327122 |  5327463 |       0.99 | 2006-11-29 20:37:48.78493  | 2014-01-29 22:15:04.46011
 3358 |      264 |       15 |             5 | One Step Beyond             | Karsh Kale                 |       366085 |  6034098 |       0.99 | 2006-11-29 20:37:48.78493  | 2014-01-29 22:15:04.468931
 1456 |      118 |       15 |             1 | Stillness In Time           | Toby Smith                 |       257097 |  8644290 |       0.99 | 2008-05-01 07:04:10.938476 | 2014-01-29 22:15:05.485363
 1463 |      118 |       15 |             1 | Journey To Arnhemland       | Toby Smith/Wallis Buchanan |       322455 | 10843832 |       0.99 | 2008-05-01 07:04:10.938476 | 2014-01-29 22:15:05.487395
 1455 |      118 |       15 |             1 | Just Another Story          | Toby Smith                 |       529684 | 17582818 |       0:

-- 4) Find the all the artists whose names start with A.

SELECT * FROM artist WHERE name LIKE 'A%';


-- 5) Find all the tracks that belong to playlist 1.

SELECT * FROM playlists_tracks;
SELECT track_id FROM playlists_tracks WHERE playlist_id = 1;
SELECT id, name FROM tracks WHERE id = 1;
SELECT id, name FROM tracks WHERE id IN (SELECT track_id FROM playlists_tracks WHERE playlist_id = 1);

/* to show how many tracks  */
SELECT COUNT(*) FROM tracks WHERE id IN (SELECT track_id FROM playlists_tracks WHERE playlist_id = 1);
 count
