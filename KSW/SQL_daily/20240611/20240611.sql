-- 코드를 작성해주세요
SELECT ID, IF(LENGTH IS NULL , 0, LENGTH) AS LENGTH
FROM FISH_INFO
WHERE LENGTH > 10
ORDER BY LENGTH DESC, ID ASC
LIMIT 10;

-- SQL은 다음 부터는 JOIN 위주로 푸는 것으로~
-- https://school.programmers.co.kr/learn/courses/30/lessons/298517