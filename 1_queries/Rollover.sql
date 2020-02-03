SELECT students.name, students.start_date AS student_start_date, cohorts.start_date AS cohort_start_date
FROM students 
JOIN cohorts on cohorts.id = cohort_id
WHERE students.start_date != cohorts.start_date;