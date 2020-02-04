SELECT teachers.name as Teacher, students.name as Student, assignments.name , (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id=assistance_requests.teacher_id
JOIN students ON students.id=assistance_requests.student_id
JOIN assignments ON assignments.id=assistance_requests.assignment_id
ORDER BY duration
;