-- 코드를 입력하세요
SELECT MCDP_CD AS 진료과코드 , COUNT(PT_NO) AS 5월예약건수
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD, "%Y-%m") = "2022-05" 
GROUP BY MCDP_CD
ORDER BY 5월예약건수, 진료과코드 


-- 예약 취소한건 관계 없었다. 이런 상세 조건은 좀 애매한느낌이 있다.