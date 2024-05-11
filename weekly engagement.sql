SELECT
    (STR_TO_DATE(occurred_at, '%Y-%m-%d')) AS week_start,
    events.device,
    COUNT(DISTINCT events.user_id) AS weekly_active_users
FROM
    events
GROUP BY
    week_start, events.device;
    