-- 자동차 평균 대여 기간 구하기

-- 문제 설명
-- 다음은 어느 자동차 대여 회사의 자동차 대여 기록 정보를 담은 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블입니다. 
-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블은 아래와 같은 구조로 되어있으며, 
-- HISTORY_ID, CAR_ID, START_DATE, END_DATE 는 각각 자동차 대여 기록 ID, 자동차 ID, 대여 시작일, 대여 종료일을 나타냅니다.

-- Column name	Type	Nullable
-- HISTORY_ID	INTEGER	FALSE
-- CAR_ID	    INTEGER	FALSE
-- START_DATE	DATE	FALSE
-- END_DATE     DATE	FALSE

-- 문제
-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 평균 대여 기간이 7일 이상인 자동차들의 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력하는 
-- SQL문을 작성해주세요. 평균 대여 기간은 소수점 두번째 자리에서 반올림하고, 결과는 평균 대여 기간을 기준으로 내림차순 정렬해주시고, 
-- 평균 대여 기간이 같으면 자동차 ID를 기준으로 내림차순 정렬해주세요.

-- 답
SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE, START_DATE) + 1), 1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING ROUND(AVG(DATEDIFF(END_DATE, START_DATE) + 1), 1) >= 7
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC

-- 결과
-- CAR_ID	AVERAGE_DURATION
-- 26	    101.0
-- 22	    46.0
-- 16	    46.0
-- 17	    36.0
-- 9	    34.8
-- 1	    31.0
-- 29	    27.8
-- 28	    26.8
-- 27	    22.7
-- 2	    21.1
-- 18	    19.6
-- 19	    19.2
-- 6	    18.8
-- 5	    17.6
-- 11	    15.9
-- 7	    15.8
-- 4	    15.7
-- 24	    15.3
-- 20	    13.8
-- 15	    13.0
-- 10	    12.9
-- 12	    11.2
-- 23	    7.3