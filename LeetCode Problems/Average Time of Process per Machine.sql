WITH StartEvents AS (
    SELECT machine_id, process_id, timestamp AS start_time
    FROM Activity
    WHERE activity_type = 'start'
),
EndEvents AS (
    SELECT machine_id, process_id, timestamp AS end_time
    FROM Activity
    WHERE activity_type = 'end'
)
SELECT
    StartEvents.machine_id,
    ROUND(AVG(EndEvents.end_time - StartEvents.start_time),3) AS processing_time 
FROM
    StartEvents
JOIN EndEvents ON StartEvents.machine_id = EndEvents.machine_id
    AND StartEvents.process_id = EndEvents.process_id
GROUP BY StartEvents.machine_id
ORDER BY StartEvents.machine_id;
