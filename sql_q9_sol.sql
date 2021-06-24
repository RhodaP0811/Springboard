SELECT 	p.player_name, 
		p.jersey_no 
FROM player_mast_csv p,
	soccer_country_csv s,
	soccer_team_csv t
WHERE p.team_id = s.country_id
  AND p.team_id = t.team_id
  AND s.country_name = 'Germany';