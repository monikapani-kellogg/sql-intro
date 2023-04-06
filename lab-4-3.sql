-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


SELECT teams.name,players.first_name, players.last_name, stats.home_runs
FROM stats
INNER JOIN 
teams
on stats.team_id = teams.id
INNER JOIN
players
ON players.id = stats.player_id
WHERE teams.year = 2019
ORDER by teams.year, stats.home_runs desc
LIMIT 1
;