SELECT p.player_name, p.jersey_no, p.playing_club 
FROM player_mast_csv p,
	soccer_country_csv s
WHERE p.posi_to_play='GK' 
  AND p.team_id= s.country_id
  AND s.country_name = 'England'
;