
SELECT NEW_T.FLAVOR
--  FROM 절에 서브쿼리를 썼는데 사실 이게 좋은 쿼리인지는 모르겠음
--  JOIN 문제는 거의 처음 푼거라 이쪽 부분을 더 연습해보는게 좋을 것 같음
--  UNION, JOIN은 따로 시간내서 영상을 보던지 해야겠음
FROM (SELECT FIRST_HALF.FLAVOR, FIRST_HALF.TOTAL_ORDER
FROM FIRST_HALF
LEFT OUTER JOIN JULY
ON FIRST_HALF.SHIPMENT_ID=JULY.SHIPMENT_ID
UNION
SELECT JULY.FLAVOR, JULY.TOTAL_ORDER
FROM JULY
LEFT OUTER JOIN FIRST_HALF
ON FIRST_HALF.SHIPMENT_ID=JULY.SHIPMENT_ID) AS NEW_T
GROUP BY NEW_T.FLAVOR
ORDER BY SUM(NEW_T.TOTAL_ORDER) DESC
LIMIT 3