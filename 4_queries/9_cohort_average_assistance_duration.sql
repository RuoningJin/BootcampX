SELECT avg(total_duration.sum) as average_total_duration
FROM(
SELECT sum(completed_at-started_at)
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
) as total_duration;


