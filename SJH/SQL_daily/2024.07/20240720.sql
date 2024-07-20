-- 저자 별 카테고리 별 매출액 집계하기

-- 문제 설명
-- 다음은 어느 한 서점에서 판매중인 도서들의 도서 정보(BOOK), 저자 정보(AUTHOR) 테이블입니다.

-- BOOK 테이블은 각 도서의 정보를 담은 테이블로 아래와 같은 구조로 되어있습니다.
-- Column name	    Type	    Nullable	Description
-- BOOK_ID	        INTEGER	    FALSE	    도서 ID
-- CATEGORY	        VARCHAR(N)	FALSE	    카테고리 (경제, 인문, 소설, 생활, 기술)
-- AUTHOR_ID	    INTEGER	    FALSE	    저자 ID
-- PRICE	        INTEGER	    FALSE	    판매가 (원)
-- PUBLISHED_DATE	DATE	    FALSE	    출판일

-- AUTHOR 테이블은 도서의 저자의 정보를 담은 테이블로 아래와 같은 구조로 되어있습니다.
-- Column name	Type	    Nullable	Description
-- AUTHOR_ID	INTEGER	    FALSE	    저자 ID
-- AUTHOR_NAME	VARCHAR(N)	FALSE	    저자명

-- BOOK_SALES 테이블은 각 도서의 날짜 별 판매량 정보를 담은 테이블로 아래와 같은 구조로 되어있습니다.
-- Column name	Type	Nullable	Description
-- BOOK_ID	    INTEGER	FALSE	    도서 ID
-- SALES_DATE	DATE	FALSE	    판매일
-- SALES	    INTEGER	FALSE	    판매량

-- 문제
-- 2022년 1월의 도서 판매 데이터를 기준으로 
-- 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 
-- 리스트를 출력하는 SQL문을 작성해주세요.
-- 결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.

-- 답
SELECT b.AUTHOR_ID, AUTHOR_NAME, CATEGORY, SUM(PRICE * SALES) AS TOTAL_SALES
FROM BOOK as b
JOIN AUTHOR as a ON b.AUTHOR_ID = a.AUTHOR_ID
JOIN BOOK_SALES as s ON b.BOOK_ID = s.BOOK_ID
WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 1
GROUP BY b.AUTHOR_ID, CATEGORY
ORDER BY b.AUTHOR_ID, CATEGORY DESC

-- 결과
-- AUTHOR_ID	AUTHOR_NAME	CATEGORY   TOTAL_SALES
-- 1	        홍길동	    인문	    561000
-- 1	        홍길동	    경제	    1107000
-- 2	        김영호	    소설	    450000
-- 3	        김수진	    생활	    817000
-- 3	        김수진	    기술	    1523000