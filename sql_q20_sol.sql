SELECT match_no,country_name,player_name,jersey_no,time_in_out
FROM player_in_out_csv a
JOIN player_mast_csv b ON a.player_id=b.player_id
JOIN soccer_country_csv c ON b.team_id=c.country_id
WHERE a.in_out='I'
AND a.play_schedule='NT'
AND a.play_half=1
ORDER BY 1;