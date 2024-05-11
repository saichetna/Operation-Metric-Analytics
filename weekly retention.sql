SELECT
    MONTH(this_month.occurred_at) AS month,
    COUNT(DISTINCT last_month.user_id) AS retained_users
FROM
    events this_month
LEFT JOIN
    events last_month ON this_month.user_id = last_month.user_id
                      AND DATEDIFF(this_month.occurred_at, last_month.occurred_at) = 1
GROUP BY
    MONTH(this_month.occurred_at);