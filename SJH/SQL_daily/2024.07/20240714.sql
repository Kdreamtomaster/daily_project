-- 년, 월, 성별 별 상품 구매 회원 수 구하기

-- 문제 설명
-- 다음은 어느 의류 쇼핑몰에 가입한 회원 정보를 담은 USER_INFO 테이블과 온라인 상품 판매 정보를 담은 ONLINE_SALE 테이블 입니다.
-- USER_INFO 테이블은 아래와 같은 구조로 되어있으며 USER_ID, GENDER, AGE, JOINED는 각각 회원 ID, 성별, 나이, 가입일을 나타냅니다.

-- Column name	Type	Nullable
-- USER_ID	    INTEGER	FALSE
-- GENDER	    TINYINT(1)	TRUE
-- AGE	        INTEGER	TRUE
-- JOINED	    DATE	FALSE

-- GENDER 컬럼은 비어있거나 0 또는 1의 값을 가지며 0인 경우 남자를, 1인 경우는 여자를 나타냅니다.

-- ONLINE_SALE 테이블은 아래와 같은 구조로 되어있으며,
-- ONLINE_SALE_ID, USER_ID, PRODUCT_ID, SALES_AMOUNT, SALES_DATE는 각각 온라인 상품 판매 ID, 회원 ID, 상품 ID, 판매량, 판매일을 나타냅니다.

-- Column name	    Type	Nullable
-- ONLINE_SALE_ID	INTEGER	FALSE
-- USER_ID	        INTEGER	FALSE
-- PRODUCT_ID	    INTEGER	FALSE
-- SALES_AMOUNT	    INTEGER	FALSE
-- SALES_DATE	    DATE	FALSE

-- 동일한 날짜, 회원 ID, 상품 ID 조합에 대해서는 하나의 판매 데이터만 존재합니다.

-- 문제
-- USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 
-- 결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.

-- 답
SELECT YEAR(SALES_DATE) AS YEAR, MONTH(SALES_DATE) AS MONTH, GENDER, COUNT(DISTINCT o.USER_ID) AS USERS
FROM USER_INFO AS u
JOIN ONLINE_SALE AS o
ON u.USER_ID = o.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER

-- 결과
-- YEAR	MONTH	GENDER	USERS
-- 2022	1	    0	    24
-- 2022	1	    1	    25
-- 2022	2	    0	    25
-- 2022	2	    1	    21
-- 2022	3	    0	    3
-- 2022	3	    1	    4

-- 아직도 헷갈리는게 많다..