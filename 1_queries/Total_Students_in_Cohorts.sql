select count(name)
from students
where cohort_id IN (1, 2, 3);