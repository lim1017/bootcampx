SELECT name, email, phone
FROM students
where end_date IS NOT NULL AND github IS NULL;