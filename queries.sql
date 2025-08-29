-- tạo database và table
create database movies_imdb

create table movies(
movie_id int PRIMARY KEY,
title varchar(100),
genre varchar(50),
release_year int,
rating FLOAT
)

-- thêm dữ liệu
INSERT INTO movies 
VALUES
(1, 'The Shawshank Redemption', 'Drama', '1994', '9.3'),
(2, 'The Godfather', 'Crime', '1972', '9.2'),
(3, 'The Dark Knight', 'Action', '2008', '9.0'),
(4, '12 Angry Men', 'Drama', '1957', '8.9'),
(5, 'Schindlers List', 'Biography', '1993', '8.9'),
(6, 'Inception', 'Sci-Fi', '2010', '8.8'),
(7, 'Fight Club', 'Drama', '1999', '8.8')

-- 1. Xem table include tất cả phim
select * from movies

-- 2. lấy phim có rating >9
select title, rating
from movies
where rating >9

-- 3. xem mỗi thể loại có mấy phim
select genre, COUNT(*) as total_movies
from movies
group by genre 

-- 4. xem coi phim nào mới nhất
select top 1 title, release_year
from movies
order by release_year desc

-- 5. trung bình rating theo từng thể loại
select genre, AVG(rating) as avg_rating
from movies 
group by genre

-- 6. top 3 phim có rating cao nhất
select top 3 title, rating
from movies
order by rating desc 
 