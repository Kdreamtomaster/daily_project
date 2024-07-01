-- 5월 식품들의 총매출 조회하기

-- 문제 설명
-- 다음은 식품의 정보를 담은 FOOD_PRODUCT 테이블과 식품의 주문 정보를 담은 FOOD_ORDER 테이블입니다. 
-- FOOD_PRODUCT 테이블은 다음과 같으며 
-- PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE는 
-- 식품 ID, 식품 이름, 식품코드, 식품분류, 식품 가격을 의미합니다.

-- Column name	    Type	    Nullable
-- PRODUCT_ID	    VARCHAR(10)	FALSE
-- PRODUCT_NAME	    VARCHAR(50)	FALSE
-- PRODUCT_CD	    VARCHAR(10)	TRUE
-- CATEGORY	        VARCHAR(10)	TRUE
-- PRICE	        NUMBER	    TRUE
-- FOOD_ORDER 테이블은 다음과 같으며 
-- ORDER_ID, PRODUCT_ID, AMOUNT, PRODUCE_DATE, IN_DATE, OUT_DATE, FACTORY_ID, WAREHOUSE_ID는 각각 
-- 주문 ID, 제품 ID, 주문량, 생산일자, 입고일자, 출고일자, 공장 ID, 창고 ID를 의미합니다.

-- Column name	    Type	    Nullable
-- ORDER_ID	        VARCHAR(10)	FALSE
-- PRODUCT_ID	    VARCHAR(5)	FALSE
-- AMOUNT	        NUMBER	    FALSE
-- PRODUCE_DATE	    DATE	    TRUE
-- IN_DATE	        DATE	    TRUE
-- OUT_DATE	        DATE	    TRUE
-- FACTORY_ID	    VARCHAR(10)	FALSE
-- WAREHOUSE_ID	    VARCHAR(10)	FALSE

-- 문제
-- FOOD_PRODUCT와 FOOD_ORDER 테이블에서 생산일자가 2022년 5월인 식품들의 
-- 식품 ID, 식품 이름, 총매출을 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 총매출을 기준으로 내림차순 정렬해주시고 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬해주세요.

-- 답
SELECT FOOD_ORDER.PRODUCT_ID, PRODUCT_NAME, SUM(PRICE * AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT
JOIN FOOD_ORDER
ON FOOD_PRODUCT.PRODUCT_ID = FOOD_ORDER.PRODUCT_ID
WHERE DATE_FORMAT(PRODUCE_DATE, '%Y-%m') = '2022-05'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, FOOD_ORDER.PRODUCT_ID

-- 밑에는 where절 다른 방법 2가지
--  YEAR(PRODUCE_DATE) = '2022'
--          AND MONTH(PRODUCE_DATE) = '5'

--  PRODUCE_DATE >= '2022-05-01'
--          AND PRODUCE_DATE < '2022-06-01'