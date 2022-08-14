/* With respect to the Astronaut DataSet */

/* Point 1 */
SELECT name, max(Space_Flight_hr) FROM astronauts;
SELECT name, min(Space_Flight_hr) FROM astronauts;
SELECT name, round(avg(Space_Flight_hr),2) "Avg_spaceFlight_hr" FROM astronauts;

/* Point 2 */
select Graduate_Major,count(Graduate_Major) from astronauts Group by Graduate_Major Having count(*) > 10;

select Name,Graduate_Major from astronauts group by Graduate_Major
Having Graduate_Major LIKE 'Aerospace%';

select status,count(*) from astronauts group by status; 
/* Point 3 */
SELECT status,count(*) as No_of_Employees,
CASE
    WHEN Status = 'Active' THEN 'Payroll A'
    WHEN Status = 'Deceased' THEN 'Payroll B'
    WHEN Status = 'Management' THEN 'Payroll C'
    ELSE 'Payroll D'
END "Payroll category"
from astronauts group by status;

/* Point 4 */
select count(name) from astronauts where status = 'Retired' or status = 'Deceased';

select count(*) from astronauts group by status having status = 'Active' and Gender = 'Male';
