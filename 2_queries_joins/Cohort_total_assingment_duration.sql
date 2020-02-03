SELECT sum(assignment_submissions.duration)
FROM assignment_submissions 
JOIN students ON cohort_id=cohorts.id
JOIN cohorts ON students.id = student_id 
WHERE cohort = 'FEB12';
