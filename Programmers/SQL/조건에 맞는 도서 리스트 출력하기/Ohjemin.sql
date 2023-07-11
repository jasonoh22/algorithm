SELECT
    BOOK_ID,TO_CHAR(PUBLISHED_DATE,'YYYY-MM-DD')
FROM
    BOOK
WHERE
    TO_CHAR(PUBLISHED_DATE,'YYYY') = '2021'
    AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE;
