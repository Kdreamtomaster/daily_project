-- 코드를 입력하세요
SELECT ICECREAM_INFO.INGREDIENT_TYPE, SUM(FIRST_HALF.TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF
INNER JOIN ICECREAM_INFO
ON FIRST_HALF.FLAVOR = ICECREAM_INFO.FLAVOR
GROUP BY ICECREAM_INFO.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER

-- 진이 다빠져서 이거라도 쉬운거 풀었다 이정도는 구글링안해도 풀려서 다행이다.