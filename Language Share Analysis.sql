SELECT distinct
    language,
    job_id,
    time_spent,
    (time_spent * 100.0) / total_time_spent AS percentage_share
FROM 
    job_data
CROSS JOIN (
    SELECT SUM(time_spent) AS total_time_spent FROM job_data
) AS total
ORDER BY
    percentage_share DESC;
