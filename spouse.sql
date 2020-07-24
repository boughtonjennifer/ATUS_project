--sqlite3 atus.sqlite
--.mode columns
--.headers on

SELECT spouse_or_partner_present, AVG(case when worked_last_week <= 2 AND edited_labor_force_status < 5 then 1 else 0 end) as ratio
FROM respondents
GROUP BY spouse_or_partner_present;

'''
spouse_or_partner_present  ratio
-------------------------  -----------------
1                          0.717117264605454
2                          0.826204656199242
3                          0.610214952685342

Note: From spouse_or_partner_present:
1: Spouse present
2: Unmarried partner present
3: No spouse or unmarried partner present
'''
