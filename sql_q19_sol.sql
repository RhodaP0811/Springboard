SELECT COUNT(DISTINCT player_name) as 'Captain/Goal Keeper'
FROM match_captain_csv m
JOIN soccer_country_csv b ON m.team_id=b.country_id
JOIN player_mast_csv c ON m.player_captain=c.player_id
AND posi_to_play='GK';