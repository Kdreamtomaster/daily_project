-- 조건에 맞는 사원 정보 조회하기
-- 문제 설명
-- HR_DEPARTMENT 테이블은 회사의 부서 정보를 담은 테이블입니다. 
-- HR_DEPARTMENT 테이블의 구조는 다음과 같으며 DEPT_ID, DEPT_NAME_KR, DEPT_NAME_EN, LOCATION은 각각 부서 ID, 국문 부서명, 영문 부서명, 부서 위치를 의미합니다.

-- Column name	Type	Nullable
-- DEPT_ID	    VARCHAR	FALSE
-- DEPT_NAME_KR	VARCHAR	FALSE
-- DEPT_NAME_EN	VARCHAR	FALSE
-- LOCATION	    VARCHAR	FLASE

-- HR_EMPLOYEES 테이블은 회사의 사원 정보를 담은 테이블입니다. 
-- HR_EMPLOYEES 테이블의 구조는 다음과 같으며 
-- EMP_NO, EMP_NAME, DEPT_ID, POSITION, EMAIL, COMP_TEL, HIRE_DATE, SAL은 각각 사번, 성명, 부서 ID, 직책, 이메일, 전화번호, 입사일, 연봉을 의미합니다.

-- Column name	Type	Nullable
-- EMP_NO	    VARCHAR	FALSE
-- EMP_NAME	    VARCHAR	FALSE
-- DEPT_ID	    VARCHAR	FALSE
-- POSITION	    VARCHAR	FALSE
-- EMAIL	    VARCHAR	FALSE
-- COMP_TEL	    VARCHAR	FALSE
-- HIRE_DATE	DATE	FALSE
-- SAL	        NUMBER	FALSE

-- HR_GRADE 테이블은 2022년 사원의 평가 정보를 담은 테이블입니다. 
-- HR_GRADE의 구조는 다음과 같으며 EMP_NO, YEAR, HALF_YEAR, SCORE는 각각 사번, 연도, 반기, 평가 점수를 의미합니다.

-- Column name	Type	Nullable
-- EMP_NO	    VARCHAR	FALSE
-- YEAR	        NUMBER	FALSE
-- HALF_YEAR	NUMBER	FALSE
-- SCORE	    NUMBER	FALSE

-- 문제
-- HR_DEPARTMENT, HR_EMPLOYEES, HR_GRADE 테이블에서 2022년도 한해 평가 점수가 가장 높은 사원 정보를 조회하려 합니다. 
-- 2022년도 평가 점수가 가장 높은 사원들의 점수, 사번, 성명, 직책, 이메일을 조회하는 SQL문을 작성해주세요.
-- 2022년도의 평가 점수는 상,하반기 점수의 합을 의미하고, 평가 점수를 나타내는 컬럼의 이름은 SCORE로 해주세요.

-- 답
SELECT SUM(SCORE) AS SCORE, g.EMP_NO, EMP_NAME, POSITION, EMAIL
FROM HR_EMPLOYEES AS e
JOIN HR_DEPARTMENT AS d ON e.DEPT_ID = d.DEPT_ID
JOIN HR_GRADE AS g ON e.EMP_NO = g.EMP_NO
GROUP BY g.EMP_NO
ORDER BY SCORE DESC
LIMIT 1

-- 결과
-- SCORE	EMP_NO	EMP_NAME	POSITION	EMAIL
-- 181	    2020002	김연주	        팀원	yeonjoo_kim@grep.com