-- ROOT 아이템 구하기

-- 문제 설명
-- 어느 한 게임에서 사용되는 아이템들은 업그레이드가 가능합니다.
-- 'ITEM_A'->'ITEM_B'와 같이 업그레이드가 가능할 때
-- 'ITEM_A'를 'ITEM_B'의 PARENT 아이템,
-- PARENT 아이템이 없는 아이템을 ROOT 아이템이라고 합니다.

-- 예를 들어 'ITEM_A'->'ITEM_B'->'ITEM_C' 와 같이 업그레이드가 가능한 아이템이 있다면
-- 'ITEM_C'의 PARENT 아이템은 'ITEM_B'
-- 'ITEM_B'의 PARENT 아이템은 'ITEM_A'
-- ROOT 아이템은 'ITEM_A'가 됩니다.

-- 다음은 해당 게임에서 사용되는 아이템 정보를 담은 ITEM_INFO 테이블과 
-- 아이템 관계를 나타낸 ITEM_TREE 테이블입니다. 
-- ITEM_INFO 테이블은 다음과 같으며, 
-- ITEM_ID, ITEM_NAME, RARITY, PRICE는 각각 
-- 아이템 ID, 아이템 명, 아이템의 희귀도, 아이템의 가격을 나타냅니다.

-- Column name	Type	    Nullable
-- ITEM_ID	    INTEGER	    FALSE
-- ITEM_NAME	VARCHAR(N)	FALSE
-- RARITY	    INTEGER	    FALSE
-- PRICE	    INTEGER	    FALSE

-- ITEM_TREE 테이블은 다음과 같으며, 
-- ITEM_ID, PARENT_ITEM_ID는 각각 아이템 ID, PARENT 아이템의 ID를 나타냅니다.

-- Column name	    Type	Nullable
-- ITEM_ID	        INTEGER	FALSE
-- PARENT_ITEM_ID	INTEGER	TRUE

-- 단, 각 아이템들은 오직 하나의 PARENT 아이템 ID를 가지며, ROOT 아이템의 PARENT 아이템 ID는 NULL 입니다.

-- ROOT 아이템이 없는 경우는 존재하지 않습니다.

-- 문제
-- ROOT 아이템을 찾아 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME)을 출력하는 SQL문을 작성해 주세요. 
-- 이때, 결과는 아이템 ID를 기준으로 오름차순 정렬해 주세요.

-- 답
SELECT ITEM_TREE.ITEM_ID, ITEM_NAME
FROM ITEM_INFO
JOIN ITEM_TREE
ON ITEM_INFO.ITEM_ID = ITEM_TREE.ITEM_ID
WHERE PARENT_ITEM_ID IS NULL
ORDER BY ITEM_TREE.ITEM_ID

-- 결과
-- ITEM_ID	ITEM_NAME
-- 0	    ITEM_A
-- 3	    ITEM_D

-- 오늘 sql도 2문제를 풀었다. 다른 문제도 IS NULL사용하는 문제인데 너무 쉬워서 이 문제만 올린다.