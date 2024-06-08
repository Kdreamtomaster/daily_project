-- 조건에 맞는 사용자와 총 거래금액 조회하기

-- 문제 설명
-- 다음은 중고 거래 게시판 정보를 담은 USED_GOODS_BOARD 테이블과 
-- 중고 거래 게시판 사용자 정보를 담은 USED_GOODS_USER 테이블입니다. 
-- USED_GOODS_BOARD 테이블은 다음과 같으며 
-- BOARD_ID, WRITER_ID, TITLE, CONTENTS, PRICE, CREATED_DATE, STATUS, VIEWS는 
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

-- USED_GOODS_USER 테이블은 다음과 같으며
-- USER_ID, NICKNAME, CITY, STREET_ADDRESS1, STREET_ADDRESS2, TLNO는 각각 
-- 회원 ID, 닉네임, 시, 도로명 주소, 상세 주소, 전화번호를 를 의미합니다.

-- Column name	    Type	        Nullable
-- USER_ID	        VARCHAR(50) 	FALSE
-- NICKANME	        VARCHAR(100)	FALSE
-- CITY	            VARCHAR(100)	FALSE
-- STREET_ADDRESS1	VARCHAR(100)	FALSE
-- STREET_ADDRESS2	VARCHAR(100)	TRUE
-- TLNO	            VARCHAR(20) 	FALSE

-- 답
SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD
JOIN USED_GOODS_USER
ON USED_GOODS_BOARD.WRITER_ID = USED_GOODS_USER.USER_ID
WHERE STATUS = 'DONE'
GROUP BY USER_ID
HAVING SUM(PRICE) >= 700000
ORDER BY TOTAL_SALES

-- 결과
-- USER_ID	    NICKNAME    TOTAL_SALES
-- zkzkdh1	    후후후	     700000
-- dhfkzmf09	찐찐	     860000
-- sangyoung58	보라보라 	 1500000