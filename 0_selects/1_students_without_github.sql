SELECT id, name, email,github, cohort_id
FROM students
WHERE github IS null
ORDER BY Cohort_id;