SELECT COUNT(DISTINCT NAME) as count
FROM ANIMAL_INS
WHERE NAME IS NOT NULL;


-- Group by로 풀려고 서브쿼리도 써봤는데 Distinct로 쉽게 풀리는 거였음 
-- 뭔차이인지 지피티 한테 물어보니 아래와 같다. 

-- SELECT SUM(b.count) as count
-- FROM
--     (SELECT COUNT(NAME) as count
-- FROM ANIMAL_INS 
--      WHERE NAME IS NOT NULL
-- GROUP BY NAME) b;

-- GPT says: 위 쿼리는 중복된 이름을 고려하지 않고, 각 이름이 몇 번 등장했는지의 합계를 구한 것입니다.
-- 실제로 우리는 중복된 이름을 제거한 후의 이름 수를 구하려는 것이 목표입니다