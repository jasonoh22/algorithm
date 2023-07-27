SELECT
    CAR_ID
    ,MAX(CASE WHEN START_DATE <= TO_DATE('20221016','YYYYMMDD')
               AND END_DATE >= TO_DATE('20221016','YYYYMMDD') THEN '대여중'
          ELSE '대여 가능' END) AS "AVAILABILITY"
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY
    CAR_ID
ORDER BY
    CAR_ID DESC
