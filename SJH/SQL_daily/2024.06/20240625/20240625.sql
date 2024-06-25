-- 연도 별 평균 미세먼지 농도 조회하기

-- 문제 설명
-- AIR_POLLUTION 테이블은 전국의 월별 미세먼지 정보를 담은 테이블입니다. 
-- AIR_POLLUTION 테이블의 구조는 다음과 같으며 
-- LOCATION1, LOCATION2, YM, PM_VAL1, PM_VAL2은 각각 
-- 지역구분1, 지역구분2, 측정일, 미세먼지 오염도, 초미세먼지 오염도를 의미합니다.

-- Column name	Type	Nullable
-- LOCATION1	VARCHAR	FALSE
-- LOCATION2	VARCHAR	FALSE
-- YM	        DATE	FALSE
-- PM_VAL1	    NUMBER	FLASE
-- PM_VAL2	    NUMBER	FLASE

-- 문제
-- AIR_POLLUTION 테이블에서 수원 지역의 연도 별 평균 미세먼지 오염도와 
-- 평균 초미세먼지 오염도를 조회하는 SQL문을 작성해주세요. 
-- 이때, 평균 미세먼지 오염도와 평균 초미세먼지 오염도의 컬럼명은 각각 PM10, PM2.5로 해 주시고, 
-- 값은 소수 셋째 자리에서 반올림해주세요.
-- 결과는 연도를 기준으로 오름차순 정렬해주세요.

-- 답
SELECT YEAR(YM) AS YEAR
        ,ROUND(AVG(PM_VAL1),2) AS 'PM10'
        ,ROUND(AVG(PM_VAL2),2) AS 'PM2.5'
FROM AIR_POLLUTION
WHERE LOCATION2 = '수원'
GROUP BY YEAR(YM)
ORDER BY YEAR;

-- 결과
-- YEAR	PM10	PM2.5
-- 2018	41	    20.25

-- 되게 쉬운 문제인데 alias 뒤에 소수점있는 거 때문에 실행 안 됐다..
-- 소수점이 있으면 ``으로 감싸주거나 ''로 감싸줘야 된다.