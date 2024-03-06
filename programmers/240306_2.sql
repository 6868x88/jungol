-- 연간 평가점수에 해당하는 평가 등급 및 성과금 조회하기
-- 사번, 성명, 평가 등급 GRADE, 성과금 BONUS을 조회


--1.MySQL
SELECT A.EMP_NO
      ,A.EMP_NAME
      ,B.GRADE
      ,CASE WHEN B.GRADE = 'S' THEN A.SAL* 0.2 
                  WHEN B.GRADE ='A' THEN A.SAL*0.15 
                  WHEN B.GRADE = 'B' THEN A.SAL*0.1 
                  ELSE 0 END AS BONUS
FROM HR_EMPLOYEES A,
     (SELECT EMP_NO 
                   ,CASE WHEN AVG(SCORE) >= 96 THEN 'S'
                         WHEN AVG(SCORE) >= 90 THEN 'A'
                         WHEN AVG(SCORE) >= 80 THEN 'B'
                         ELSE 'C' END AS GRADE
            FROM HR_GRADE 
            GROUP BY EMP_NO
     )B
WHERE A.EMP_NO = B.EMP_NO
ORDER BY A.EMP_NO 
;

--2.Oracle
--SELECT A.EMP_NO
--     ,A.EMP_NAME
--      ,B.GRADE
--      ,DECODE('S', A.SAL*0.2, 'A', A.SAL*0.15, 'B', A.SAL*0.1, 0) AS BONUS
--FROM HR_EMPLOYEES A,
--     (SELECT EMP_NO 
--                   ,CASE WHEN AVG(SCORE) >= 96 THEN 'S'
--                         WHEN AVG(SCORE) >= 90 THEN 'A'
--                         WHEN AVG(SCORE) >= 80 THEN 'B'
--                         ELSE 'C' END AS GRADE
--            FROM HR_GRADE 
--            GROUP BY EMP_NO
--     )B
--WHERE A.EMP_NO = B.EMP_NO
--ORDER BY A.EMP_NO 
--;
