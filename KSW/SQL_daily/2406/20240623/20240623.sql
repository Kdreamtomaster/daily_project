-- 연도별로 분류된 결과를 추출하는 메인 쿼리
SELECT 
    -- DIFFERENTIATION_DATE에서 연도만 추출하여 YEAR로 명명
    YEAR(e.DIFFERENTIATION_DATE) AS YEAR, 
    -- 최대 콜로니 크기에서 현재 콜로니 크기를 뺀 값을 YEAR_DEV로 명명
    s.SIZE_MAX - e.SIZE_OF_COLONY AS YEAR_DEV, 
    -- ID 컬럼 선택
    e.ID   
FROM 
    ECOLI_DATA e -- ECOLI_DATA 테이블에 별칭 e 사용
JOIN 
    (
        -- 서브쿼리: 연도별로 최대 콜로니 크기 추출
        SELECT 
            -- DIFFERENTIATION_DATE에서 연도만 추출하여 YEAR로 명명
            YEAR(DIFFERENTIATION_DATE) AS YEAR, 
            -- 연도별 최대 콜로니 크기를 SIZE_MAX로 명명
            MAX(SIZE_OF_COLONY) AS SIZE_MAX
        FROM 
            ECOLI_DATA
        -- 연도별로 그룹화
        GROUP BY 
            YEAR(DIFFERENTIATION_DATE)
    ) AS s -- 서브쿼리 결과에 별칭 s 사용
    -- 메인 쿼리와 서브쿼리를 연도로 조인
    ON YEAR(e.DIFFERENTIATION_DATE) = s.YEAR
-- 결과를 연도별 오름차순, 연도 내 크기 차이 오름차순으로 정렬
ORDER BY 
    YEAR ASC, 
    YEAR_DEV ASC;

-- 조인에 서브쿼리 쓰는건 아직 못해서 지피티 찬스쓰고 주석읽어보았다. 다음번엔 풀고말테다