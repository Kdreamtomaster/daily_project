-- 조건에 맞는 사용자 정보 조회하기

-- 문제 설명
-- 다음은 중고 거래 게시판 정보를 담은 USED_GOODS_BOARD 테이블과 
-- 중고 거래 게시판 첨부파일 정보를 담은 USED_GOODS_USER 테이블입니다. 
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
-- 회원 ID, 닉네임, 시, 도로명 주소, 상세 주소, 전화번호를 의미합니다.

-- Column name	    Type	        Nullable
-- USER_ID	        VARCHAR(50)	    FALSE
-- NICKANME	        VARCHAR(100)	FALSE
-- CITY	            VARCHAR(100)	FALSE
-- STREET_ADDRESS1	VARCHAR(100)	FALSE
-- STREET_ADDRESS2	VARCHAR(100)	TRUE
-- TLNO	            VARCHAR(20)	    FALSE

-- 문제
-- USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 중고 거래 게시물을 3건 이상 등록한 사용자의 
-- 사용자 ID, 닉네임, 전체주소, 전화번호를 조회하는 SQL문을 작성해주세요. 
-- 이때, 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력되도록 해주시고, 
-- 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력해주세요. 
-- 결과는 회원 ID를 기준으로 내림차순 정렬해주세요.

-- 답
SELECT USER_ID, NICKNAME, CONCAT(CITY, ' ', STREET_ADDRESS1, ' ',STREET_ADDRESS2) AS 전체주소, 
        CONCAT(SUBSTR(TLNO, 1, 3), '-', SUBSTR(TLNO, 4, 4), '-', SUBSTR(TLNO, 8)) AS 전화번호
FROM USED_GOODS_BOARD
JOIN USED_GOODS_USER
ON USED_GOODS_BOARD.WRITER_ID = USED_GOODS_USER.USER_ID
GROUP BY USER_ID
HAVING COUNT(USER_ID) > 2
ORDER BY USER_ID DESC

-- 결과
-- USER_ID	    NICKNAME	전체주소	                            전화번호
-- xlqpfh2	    잉여킹	    성남시 분당구 수내로 1 001-004	        010-6453-4911
-- xlaortm1	    투더문	    성남시 분당구 내정로165번길 35 104-1202	010-3255-5431
-- spdlqj12	    크크큭	    성남시 분당구 수내로 206 2019동 801호	010-8723-4922
-- s2s2123	    이회장	    성남시 분당구 정자로 2 1005동 1004호	010-2211-6664
-- miyeon89	    러브러브	성남시 분당구 내정로 152 C동 204호	    010-3211-6456
-- kwag98	    미금러	    성남시 분당구 정자로 115 102-1004	    010-3211-4944
-- hwahwa2	    당근	    성남시 분당구 내정로 55 305호	        010-3211-3454
-- hong02	    자바한명	성남시 분당구 정자일로 210 4동 501호	010-2203-9488
-- hoho1112	    코딩쟁이	성남시 분당구 정자일로 1 202호	        010-3211-2939
-- hakju88	    에코	    성남시 분당구 미금일로 57 1003-401	    010-3211-4231
-- dhfkzmf09	찐찐	    성남시 분당구 수내로 13 A동 1107호	    010-5342-2914

-- SUBSTR(str FROM pos FOR len)
-- pos번째 문자열부터 읽으시고, len글자만 가져오시오.

-- CONCAT 문자열합치기