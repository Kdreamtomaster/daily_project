-- 코드를 입력하세요
SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, "%Y-%m-%d")
FROM BOOK
WHERE DATE_FORMAT(PUBLISHED_DATE, "%Y") = 2021 AND CATEGORY = "인문"
ORDER BY PUBLISHED_DATE ASC ;


# 일단은 문제에 나온대로 연도만 비교하고, (대소비교는 불필요) 오름차순은 가독성위해서 명시
# 다만 DATE_FORMAT 함수를 몰라서 찾아보았음 이부분은 연습하면서 익힐것
# 리드미 파일은 문제링크와 기본적으로 정리된 주석을 넣고, 추가적 이미지, 생각할거리 생각한것 같은 것 추가해서 작성할것 