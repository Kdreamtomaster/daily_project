SELECT BOOK.BOOK_ID, AUTHOR.AUTHOR_NAME, DATE_FORMAT(BOOK.PUBLISHED_DATE, "%Y-%m-%d") AS PUBLISHED_DATE
FROM BOOK 
INNER JOIN AUTHOR
ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
WHERE CATEGORY='경제'
ORDER BY BOOK.PUBLISHED_DATE

-- https://school.programmers.co.kr/learn/courses/30/lessons/144854
-- 또 WHERE 조건 빼먹을 뻔. ON 과 WHERE 둘중 하나만 썼는지, 빼먹었는지 확인 할것
