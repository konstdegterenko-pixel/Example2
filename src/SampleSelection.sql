SELECT d.name AS "Отдел" , e.name AS "Сотрудник", e.salary AS "Зарплата" FROM employees e 
INNER JOIN departments d ON (e.department_id = d.id) 
WHERE (e.salary IN (SELECT max(e2.salary ) FROM employees e2 GROUP BY e2.department_id));