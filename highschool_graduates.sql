--sqlite3 atus.sqlite
--.mode columns
--.headers on

SELECT state_code, AVG(educational_attainment > 38) AS 'highschool' -- 39 is a high school degree
FROM cps
GROUP BY state_code
ORDER BY highschool ASC
LIMIT 1;
'''
state_code  highschool
----------  ----------------
48          0.51349932705249

Note: state_code = 48 refers to Texas
''''
