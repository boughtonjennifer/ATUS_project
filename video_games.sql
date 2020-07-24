--sqlite3 atus.sqlite
--.mode columns
--.headers on

SELECT AVG(a.duration/60) as hours_spent, b.edited_age/10 as 'age_decade', b.edited_sex
FROM activities as a
LEFT JOIN roster as b
ON b.case_id = a.case_id
WHERE a.activity_code = 120307
GROUP BY age_decade, b.edited_sex;

'''
hours_spent       age_decade  edited_sex
----------------  ----------  ----------
1.14192818772971  0           1
1.13290163428924  0           2
1.33555394641564  1           1
1.21487778958555  1           2
1.6244116724192   2           1
1.44737981810308  2           2
1.36877751439214  3           1
1.25              3           2
1.25740441572429  4           1
1.25741029641186  4           2
1.33594332587621  5           1
1.29739531816683  5           2
1.22378716744914  6           1
1.17272386661671  6           2
1.15917745620716  7           1
1.14089184060721  7           2
1.20058997050147  8           1
1.17802197802198  8           2


Note: Male is 1
Female is 2

Decade 0 refers to 0 to 10
Decade 1 refers to 11 to 20
Decade 2 refers to 21 to 30
Decade 3 refers to 31 to 40
Decade 4 refers to 41 to 50
Decade 5 refers to 51 to 60
Decade 6 refers to 61 to 70
Decade 7 refers to 71 to 80
Decade 8 refers to 81 to 90
'''
