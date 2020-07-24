--sqlite3 atus.sqlite
--.mode columns
--.headers on

SELECT AVG(case when worked_last_week <= 2 AND edited_labor_force_status < 5 then 1 else 0 end) as ratio
FROM respondents;

'''
ratio
-----------------
0.670730850727573

67% of respondents who are eligible to work did work last worked_last_week

Note: Referenced Stackoverflow for CASE WHEN syntax here:
https://stackoverflow.com/questions/46550641/percentage-in-case-statement
'''

### Grader Comments
### Great work!
### Full Points! (4/4)
### Tip: Case When not really required, check solutions for efficient approach