-- 문제 설명
-- HR_DEPARTMENT 테이블은 회사의 부서 정보를 담은 테이블입니다. HR_DEPARTMENT 테이블의 구조는 다음과 같으며 DEPT_ID, DEPT_NAME_KR, DEPT_NAME_EN, LOCATION은 각각 부서 ID, 국문 부서명, 영문 부서명, 부서 위치를 의미합니다.

-- Column name	Type	Nullable
-- DEPT_ID	VARCHAR	FALSE
-- DEPT_NAME_KR	VARCHAR	FALSE
-- DEPT_NAME_EN	VARCHAR	FALSE
-- LOCATION	VARCHAR	FLASE
-- HR_EMPLOYEES 테이블은 회사의 사원 정보를 담은 테이블입니다. HR_EMPLOYEES 테이블의 구조는 다음과 같으며 EMP_NO, EMP_NAME, DEPT_ID, POSITION, EMAIL, COMP_TEL, HIRE_DATE, SAL은 각각 사번, 성명, 부서 ID, 직책, 이메일, 전화번호, 입사일, 연봉을 의미합니다.

-- Column name	Type	Nullable
-- EMP_NO	VARCHAR	FALSE
-- EMP_NAME	VARCHAR	FALSE
-- DEPT_ID	VARCHAR	FALSE
-- POSITION	VARCHAR	FALSE
-- EMAIL	VARCHAR	FALSE
-- COMP_TEL	VARCHAR	FALSE
-- HIRE_DATE	DATE	FALSE
-- SAL	NUMBER	FALSE
-- 문제
-- HR_DEPARTMENT와 HR_EMPLOYEES 테이블을 이용해 부서별 평균 연봉을 조회하려 합니다. 부서별로 부서 ID, 영문 부서명, 평균 연봉을 조회하는 SQL문을 작성해주세요.

-- 평균연봉은 소수점 첫째 자리에서 반올림하고 컬럼명은 AVG_SAL로 해주세요.
-- 결과는 부서별 평균 연봉을 기준으로 내림차순 정렬해주세요.

SELECT HR_EMPLOYEES.DEPT_ID, HR_DEPARTMENT.DEPT_NAME_EN, ROUND(AVG(HR_EMPLOYEES.SAL))AS AVG_SAL
FROM HR_EMPLOYEES 
INNER JOIN HR_DEPARTMENT 
ON HR_DEPARTMENT.DEPT_ID = HR_EMPLOYEES.DEPT_ID
GROUP BY HR_EMPLOYEES.DEPT_ID
ORDER BY AVG_SAL DESC

-- round 부분이 아직도 헷갈려서 다시 공부하게되었다. 