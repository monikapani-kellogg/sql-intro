-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


SELECT sum(stats.hits) 
FROM players
INNER JOIN 
stats
ON players.id = stats.player_id
WHERE players.first_name = "Barry" and players.last_name="Bonds"
;