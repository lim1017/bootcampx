SELECT teachers.name, count(assistance_requests.*) as total_assistance
FROM assistance_requests
JOIN teachers ON teachers.id=assistance_requests.teacher_id
WHERE teachers.name='Waylon Boehm'
GROUP BY teachers.name
;