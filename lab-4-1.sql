-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


SELECT id,year, max(wins) as top_win
FROM teams
WHERE b.year>1960
GROUP BY b.year
ORDER BY wins desc 

inner join

select name from teams 

;