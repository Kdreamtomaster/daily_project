-- 코드를 입력하세요
SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
FROM ANIMAL_OUTS
LEFT JOIN ANIMAL_INS
ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
WHERE ANIMAL_INS.ANIMAL_ID IS NULL


-- 좀더 효율적인 방법은 있을거라 생각되지만, 일단 풀렸다. 
-- 시간이 덜걸리는 방법은 어떤걸 써야할까, 고민..
-- mysql 뿐만아니라 postgres 도 풀어보는 식으로 해야겠다. 