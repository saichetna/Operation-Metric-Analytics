use job_data;
SELECT distinct
    job_id,
    actor_id,
    event,
    language,
    time_spent,
    org,
    ds,
    COUNT(*) AS duplicate_count
FROM
    job_data
GROUP BY
    job_id,
    actor_id,
    event,
    language,
    time_spent,
    org,
    ds
HAVING
    COUNT(*) > 1
ORDER BY
    duplicate_count DESC;
