SELECT
    ds,
    AVG(events_per_second) OVER (ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS rolling_avg_throughput
FROM (
    SELECT
        ds,
        COUNT(*) AS events_per_second
    FROM
        job_data
    GROUP BY
        ds
) AS daily_events;
