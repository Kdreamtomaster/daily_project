-- 조건에 부합하는 중고거래 상태 조회하기

-- 문제 설명
-- 다음은 중고거래 게시판 정보를 담은 USED_GOODS_BOARD 테이블입니다. 
-- USED_GOODS_BOARD 테이블은 다음과 같으며 
-- BOARD_ID, WRITER_ID, TITLE, CONTENTS, PRICE, CREATED_DATE, STATUS, VIEWS은 
-- 게시글 ID, 작성자 ID, 게시글 제목, 게시글 내용, 가격, 작성일, 거래상태, 조회수를 의미합니다.

-- Column name	Type	        Nullable
-- BOARD_ID	    VARCHAR(5)	    FALSE
-- WRITER_ID	VARCHAR(50)	    FALSE
-- TITLE	    VARCHAR(100)	FALSE
-- CONTENTS	    VARCHAR(1000)	FALSE
-- PRICE	    NUMBER	        FALSE
-- CREATED_DATE	DATE	        FALSE
-- STATUS	    VARCHAR(10)	    FALSE
-- VIEWS	    NUMBER	        FALSE

-- 문제
-- USED_GOODS_BOARD 테이블에서 2022년 10월 5일에 등록된 중고거래 게시물의 
-- 게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태를 조회하는 SQL문을 작성해주세요. 
-- 거래상태가 SALE 이면 판매중, RESERVED이면 예약중, DONE이면 거래완료 분류하여 출력해주시고, 
-- 결과는 게시글 ID를 기준으로 내림차순 정렬해주세요.

-- 답
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
    CASE
        WHEN STATUS = 'SALE' THEN '판매중'
        WHEN STATUS = 'RESERVED' THEN '예약중'
        WHEN STATUS = 'DONE' THEN '거래완료'
    END AS STATUS
FROM USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-05'
ORDER BY BOARD_ID DESC

-- 결과
-- BOARD_ID	WRITER_ID	TITLE	                            PRICE	STATUS
-- B0013	kwag98	    삼성 65인치 led tv 팝니다	        320000	예약중
-- B0012	hwahwa2	    에어팟 프로 팔아요	                125000	거래완료
-- B0011	sangyoung58	아이폰14프로 256기가 자급제팔아요	1500000	거래완료
-- B0010	keel1990	철제선반5단	                        10000	판매중
-- B0009	yawoong67	선반 팝니다	                        12000	거래완료