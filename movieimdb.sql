-- IMDB Design a DB for IMDB

-- 1. Movie should have multiple media(Video or Image)

-- create a table
CREATE TABLE imdb (
    id INTEGER PRIMARY KEY,
    MovieName TEXT NOT NULL,
    Director TEXT NOT NULL, 
    Year INTEGER NOT NULL,
    Rating FLOAT,
    video_media TEXT,
    image_media TEXT
);

--inserting into imdb
INSERT INTO imdb 
    VALUES (1, "The Shawshank Redemption" , "Frank Darabont", 1994, 9.3 ,"https://trailerlist.net/movie-trailers/black-panther-wakanda-forever-trailer-2-2022/" , "https://trailerlist.net/wp-content/uploads/2022/10/Black-Panther-Wakanda-Forever-Movie-Trailer-2022-2-390x215.jpg"),
           (2 , "The Godfather" , "Francis Ford Coppola" , 1972,   9.2 ,"https://trailerlist.net/movie-trailers/john-wick-chapter-4-trailer-2023/" , "https://trailerlist.net/wp-content/uploads/2022/08/John-Wick-Chapter-4-Trailer-2023-390x215.jpg"),
           (3, "The Dark Knight",  "Christopher Nolan", 2008 , 9.0 ,"https://trailerlist.net/tv-series/the-lord-of-the-rings-the-rings-of-power-trailer-tv-series-trailer-2022/" , "https://trailerlist.net/wp-content/uploads/2022/07/The-Lord-of-the-Rings-The-Rings-of-Power-Trailer-2022-390x215.jpg"),
           (4, "Schindler’s List", "Steven Spielberg" ,1993,  9.0 ,"https://trailerlist.net/movie-trailers/the-batman-the-bat-and-the-cat-trailer-2022/" , "https://trailerlist.net/wp-content/uploads/2021/12/The-Batman-The-Bat-and-The-Cat-Trailer-2022-390x215.jpg"),
           (5, "12 Angry Men" , "Sidney Lumet" ,1957, 9.0 ,"https://trailerlist.net/movie-trailers/spider-man-no-way-home-trailer-2021/" , "https://trailerlist.net/wp-content/uploads/2021/08/Spider-Man-No-Way-Home-Trailer-2021-390x215.jpg");



--Calling imdb table
SELECT * FROM imdb;
    
--  2. Movie can belongs to multiple Genre

-- create a genre table
CREATE TABLE genre (
    id INTEGER PRIMARY KEY,
    genre TEXT NOT NULL 
);

--inserting data into genre
INSERT INTO genre
VALUES (1 ,  "action"),
       (2, "sci-fi") ,
       (3, "Fantasy") , 
       (4, "Drama") , 
       (5, "Thriller") , 
       (6, "Crime") , 
       (7 , "documentary") ;

--Calling genre table
SELECT * FROM genre;

-- 3. Movie can have multiple reviews and Review can belongs to a user 

--create table for users
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    review_id INTEGER 
);

--inserting into users
INSERT INTO users
    VALUES (1 , "ganesh", 4 ),
           (2 , "ram" ,  6 ),
           (3 , "john" , 2 ),
           (4 , "john" , 1 ),
           (5 , "dan" ,  5 ),
           (6 , "brad" , 3 );

--create table for reviews
CREATE TABLE Reviews (
    id INTEGER PRIMARY KEY,
    User_id INTEGER,
    Movie_Id INTEGER,
    Review TEXT
);

--inserting into Reviews 
INSERT INTO Reviews 
    VALUES (1 , 3 , 9 , "this is a good movie"),
           (2 , 3 , 5 , "one of the greatest movies"),
           (3 , 5 , 2 , "all time good movie"),
           (4 , 1 , 8 , "Legendary movie"),
           (5 , 4 , 1 , "Cult classic"),
           (6 , 2 , 1 , "Thought proviking movie");
    
-- 4. Artist can have multiple skills 

--create table for artists

CREATE TABLE Artists (
    id INTEGER PRIMARY KEY,
    Artists TEXT,
    movie_id INTEGER
);

--insert into artists

INSERT INTO Artists
VALUES (1 , "Henry cavill", 1),
       (2, "Dwayne the rock johnson", 5),
       (3, "Jason momoa", 6),
       (4, "hrithik roshan", 8),
       (5, "Hugh jackman", 4);

CREATE TABLE Skills(
    id INTEGER PRIMARY KEY,
    Skills TEXT
);

-- to create table for skills

INSERT INTO skills 
VALUES (1 , "acting"),
       (2 , "singing"),
       (3 , "stunt"),
       (1 , "horse riding"),
       (1 , "Directing"),
       (1 , "screen-play");

--5. Artist can perform multiple role in a single film

CREATE TABLE roles(
    id INTEGER PRIMARY KEY,
    roles TEXT,
    Artist_id INTEGER
);

INSERT INTO roles 
VALUES (1 , "hero", 1),
       (2 , "hero-father", 2),
       (3 , "twin brother", 3);

