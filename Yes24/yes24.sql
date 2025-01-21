-- USE yes24;
-- 조인 및 관계
-- SELECT title, author FROM books;
-- SELECT * FROM books WHERE rating >=9.0;
-- SELECT title, review FROM books WHERE review >=100 ORDER BY review DESC;
-- SELECT title, price FROM books WHERE price < 20000;
-- SELECT * FROM books WHERE ranking_weeks >=4 ORDER BY ranking_weeks DESC;
-- SELECT * FROM books WHERE author = '한강 저'
-- SELECT * FROM books WHERE publisher = '황금부엉이'

-- 집계 및 그룹화
-- SELECT author, COUNT(*) AS books_count FROM books GROUP BY author
-- SELECT publisher, COUNT(*) AS publisher_count FROM books GROUP BY publisher ORDER BY publisher_count DESC;
-- SELECT author,AVG(rating) AS rating_avg FROM books GROUP BY author ORDER BY rating_avg;
-- SELECT *FROM books WHERE ranking = 1
-- SELECT title, sales, review FROM books ORDER BY sales DESC, review DESC LIMIT 10;
-- SELECT * FROM books ORDER BY publishing DESC LIMIT 5;

-- SELECT author, AVG(rating) FROM books GROUP BY author;
-- SELECT publishing, COUNT(*) FROM books GROUP BY publishing;
-- SELECT title, AVG(price) FROM books GROUP BY title;
-- SELECT * FROM books ORDER BY review DESC LIMIT 5;
-- SELECT ranking, AVG(review) FROM books GROUP BY ranking;

-- 서브 쿼리 및 고급 기능
-- SELECT title, rating FROM books WHERE rating > (SELECT AVG(rating) FROM books) ORDER BY rating DESC;
-- SELECT title, price FROM books WHERE price > (SELECT AVG(price) FROM books) ORDER BY price DESC;
-- SELECT title, review FROM books WHERE review > (SELECT MAX(review) FROM books);
-- SELECT title, sales FROM books WHERE sales < (SELECT AVG(sales) FROM books);
-- SELECT author, title FROM books WHERE author = (SELECT author  FROM books GROUP BY author ORDER BY COUNT(*) DESC LIMIT 1);

-- 데이터 수정 및 관-- UPDATE books SET PRICE + 99999 WHERE id = '한국사'
-- UPDATE Books SET title = "제목업데이트" 쪼ㄸㄲㄸ 며쇅 = '한강ㄴ 저'
-- DELETE FROM books WHERE sales = (SELECT MIN(sales) FROM books)
-- UPDATE books SET rating = rating + 1

-- 데이터 분석 예제
-- SELECT author, AVG(rating), AVG(sales) FROM books GROUP BY author;
-- SELECT publishing, AVG(price) FROM books GROUP BY publishing ORDER BY publishing DESC;
-- SELECT publisher, COUNT(*) as books_count, SUM(review) AS review_sum FROM books GROUP BY publisher ORDER BY books_count DESC;
-- SELECT ranking, AVG(sales) FROM books GROUP BY ranking;
-- SELECT price, AVG(review), AVG(rating) FROM books GROUP BY price;

-- 난이도가 있는 문제
