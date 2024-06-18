SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%' OR  
      OPTIONS LIKE '%열선시트%' OR
      OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC;


-- IN 은 함정 풀이였다...




-- gpt 의 다른 풀이들 

-- 자동차 유형별로 특정 옵션(통풍시트, 열선시트, 가죽시트)을 포함하는 자동차의 수를 집계하는 쿼리
SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
-- OPTIONS 필드에 '통풍시트', '열선시트', '가죽시트' 중 하나 이상이 포함된 레코드를 필터링
WHERE INSTR(OPTIONS, '통풍시트') > 0 
   OR INSTR(OPTIONS, '열선시트') > 0 
   OR INSTR(OPTIONS, '가죽시트') > 0
-- 자동차 유형별로 그룹화
GROUP BY CAR_TYPE
-- 자동차 유형을 오름차순으로 정렬
ORDER BY CAR_TYPE ASC;


-- 자동차 유형별로 특정 옵션(통풍시트, 열선시트, 가죽시트)을 포함하는 자동차의 수를 집계하는 쿼리
SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
-- OPTIONS 필드에 '통풍시트', '열선시트', '가죽시트' 중 하나 이상이 포함된 레코드를 필터링
-- 정규 표현식을 사용하여 옵션이 포함된 레코드를 검색 (.*는 임의의 문자열을 의미)
WHERE OPTIONS REGEXP '.*(통풍시트|열선시트|가죽시트).*'
-- 자동차 유형별로 그룹화
GROUP BY CAR_TYPE
-- 자동차 유형을 오름차순으로 정렬
ORDER BY CAR_TYPE ASC;