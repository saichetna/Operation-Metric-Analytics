SELECT
    YEAR(STR_TO_DATE(activated_at, '%d-%m-%Y %H:%i')) AS year,
    MONTH(STR_TO_DATE(activated_at, '%d-%m-%Y %H:%i')) AS month,
    COUNT(DISTINCT user_id) AS new_users
FROM
    users
GROUP BY
    year, month
ORDER BY
    year, month;
