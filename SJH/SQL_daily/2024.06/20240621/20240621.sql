-- 물고기 종류 별 잡은 수 구하기

-- 문제 설명
-- 낚시앱에서 사용하는 FISH_INFO 테이블은 잡은 물고기들의 정보를 담고 있습니다. 
-- FISH_INFO 테이블의 구조는 다음과 같으며 
-- ID, FISH_TYPE, LENGTH, TIME은 각각 잡은 
-- 물고기의 ID, 물고기의 종류(숫자), 잡은 물고기의 길이(cm), 물고기를 잡은 날짜를 나타냅니다.

-- Column name	Type	Nullable
-- ID	        INTEGER	FALSE
-- FISH_TYPE	INTEGER	FALSE
-- LENGTH	    FLOAT	TRUE
-- TIME	        DATE	FALSE

-- 단, 잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL 이며, LENGTH 에 NULL 만 있는 경우는 없습니다.

-- FISH_NAME_INFO 테이블은 물고기의 이름에 대한 정보를 담고 있습니다. 
-- FISH_NAME_INFO 테이블의 구조는 다음과 같으며, 
-- FISH_TYPE, FISH_NAME 은 각각 물고기의 종류(숫자), 물고기의 이름(문자) 입니다.

-- Column name	Type	Nullable
-- FISH_TYPE	INTEGER	FALSE
-- FISH_NAME	VARCHAR	FALSE

-- 문제
-- FISH_NAME_INFO에서 물고기의 종류 별 물고기의 이름과 잡은 수를 출력하는 SQL문을 작성해주세요.

-- 물고기의 이름 컬럼명은 FISH_NAME, 잡은 수 컬럼명은 FISH_COUNT로 해주세요.
-- 결과는 잡은 수 기준으로 내림차순 정렬해주세요.

-- 답
SELECT COUNT(ID) AS FISH_COUNT, FISH_NAME
FROM FISH_INFO
JOIN FISH_NAME_INFO
ON FISH_INFO.FISH_TYPE = FISH_NAME_INFO.FISH_TYPE
GROUP BY FISH_NAME_INFO.FISH_NAME
ORDER BY FISH_COUNT DESC

-- 결과
-- FISH_COUNT	FISH_NAME
-- 3	        BASS
-- 2	        SNAPPER
-- 1	        ANCHOVY

-- 프로그래머스에 있는 sql문제가 총 6페이지인데 벌써 절반 이상을 풀었다. 
-- 조금 더 풀다가 너무 어려워지면 LeetCode풀어야겠다.