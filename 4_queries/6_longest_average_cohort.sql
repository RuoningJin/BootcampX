-- SELECT x.name, avg(completed_at - started_at) as average_assistance_time
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts x ON x.id = cohort_id
-- GROUP BY x.name
-- HAVING avg(completed_at - started_at) > ALL(
-- SELECT avg(completed_at - started_at) as average_assistance_time
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts y ON y.id = cohort_id
-- WHERE y.name <> x.name
-- GROUP BY y.name
-- )

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;