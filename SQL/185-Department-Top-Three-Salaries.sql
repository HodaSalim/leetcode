-- Write your PostgreSQL query statement below
WITH RankedSalaries AS (
    SELECT
        e.name AS Employee,
        d.name AS Department,
        e.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS SalaryRank
    FROM
        Employee e
    JOIN
        Department d ON e.departmentId = d.id
)
SELECT
    Employee,
    Department,
    Salary
FROM
    RankedSalaries
WHERE
    SalaryRank <= 3;
