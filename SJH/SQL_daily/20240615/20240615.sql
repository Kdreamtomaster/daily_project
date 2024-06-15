-- 즐겨찾기가 가장 많은 식당 정보 출력하기

-- 문제 설명
-- 다음은 식당의 정보를 담은 REST_INFO 테이블입니다. 
-- REST_INFO 테이블은 다음과 같으며 
-- REST_ID, REST_NAME, FOOD_TYPE, VIEWS, FAVORITES, PARKING_LOT, ADDRESS, TEL은 
-- 식당 ID, 식당 이름, 음식 종류, 조회수, 즐겨찾기수, 주차장 유무, 주소, 전화번호를 의미합니다.

-- Column name	Type	        Nullable
-- REST_ID	    VARCHAR(5)	    FALSE
-- REST_NAME	VARCHAR(50)	    FALSE
-- FOOD_TYPE	VARCHAR(20)	    TRUE
-- VIEWS	    NUMBER	        TRUE
-- FAVORITES	NUMBER	        TRUE
-- PARKING_LOT	VARCHAR(1)	    TRUE
-- ADDRESS	    VARCHAR(100)	TRUE
-- TEL	        VARCHAR(100)	TRUE

-- 문제
-- REST_INFO 테이블에서 음식종류별로 즐겨찾기수가 가장 많은 식당의 
-- 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 음식 종류를 기준으로 내림차순 정렬해주세요.

-- 답
SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO
WHERE (FOOD_TYPE, FAVORITES) IN (SELECT FOOD_TYPE, MAX(FAVORITES)
      FROM REST_INFO
      GROUP BY FOOD_TYPE)
ORDER BY FOOD_TYPE DESC

-- 결과
-- FOOD_TYPE	REST_ID	REST_NAME	FAVORITES
-- 한식	        00001	은돼지식당	    734
-- 중식	        00015	만정	        20
-- 일식	        00004	스시사카우스	230
-- 양식	        00003	따띠따띠뜨	    102
-- 분식         00008	애플우스	    151

-- 서브쿼리를 잘 모르고 있는 상태다.. 더 공부를 해야된다.