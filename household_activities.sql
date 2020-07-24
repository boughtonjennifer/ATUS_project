--sqlite3 atus.sqlite
--.mode columns
--.headers on

SELECT AVG(a.duration/60) as hours_spent, b.edited_sex, c.educational_attainment
FROM activities as a
LEFT JOIN roster as b
ON b.case_id = a.case_id
LEFT JOIN cps as c
ON c.case_id = b.case_id
WHERE a.activity_code LIKE '2%' -- reference: https://social.msdn.microsoft.com/Forums/en-US/1ffde7d3-c8ea-42a4-90f4-9c75caeb5767/i-need-to-select-only-value-which-starts-with-number-using-sql-query?forum=transactsql
GROUP BY b.edited_sex, c.educational_attainment;

'''
hours_spent        edited_sex  educational_attainment
-----------------  ----------  ----------------------
0.421970838046787  1           -1
0.673228346456693  1           31
0.713874345549738  1           32
0.71617105875386   1           33
0.563652920515155  1           34
0.534852893074182  1           35
0.508538710480458  1           36
0.514462331823741  1           37
0.562798634812287  1           38
0.512226556755962  1           39
0.453687642246417  1           40
0.468264061996575  1           41
0.436061009377821  1           42
0.3825767177945    1           43
0.348358577320982  1           44
0.340645847828756  1           45
0.347757904552005  1           46
0.428303866191715  2           -1
0.689296771340115  2           31
0.685363109149139  2           32
0.696982275538583  2           33
0.549955727857946  2           34
0.528742524674651  2           35
0.49724547580943   2           36
0.508174073221276  2           37
0.566077484328435  2           38
0.499478620785296  2           39
0.451167116643885  2           40
0.46163417669017   2           41
0.435946408209806  2           42
0.384412364006236  2           43
0.346766825702974  2           44
0.34091364857819   2           45
0.350343268586738  2           46
'''

