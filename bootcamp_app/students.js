let myArgs = process.argv.slice(2);

let cohortName=myArgs[0]
let limit=myArgs[1]

console.log(cohortName)
console.log(limit)

const values = [`%${cohortName}%`, limit];


const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohortz
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2;
`, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohortz} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));