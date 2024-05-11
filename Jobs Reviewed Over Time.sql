SELECT
    ds,
    SUM(time_spent) AS total_time_spent_seconds,
    SUM(time_spent) / 3600.0 AS total_time_spent_hours
FROM
    job_data
GROUP BY
   ds;