-- 코드를 입력하세요
SELECT BOOK.CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM BOOK_SALES
LEFT JOIN BOOK
ON BOOK_SALES.BOOK_ID = BOOK.BOOK_ID
WHERE DATE_FORMAT(BOOK_SALES.SALES_DATE, "%Y-%m") = "2022-01"
GROUP BY BOOK.CATEGORY
ORDER BY BOOK.CATEGORY ASC

-- 드디어 DATE_FORMAT은 구글링 안하고 풀었다. 
-- 근데 이거 꼭 조인해야할까.
-- 판매량인데 시키지도 않은 총 판매액 계산해서 틀렸다 문제 잘 읽을것