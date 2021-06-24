SELECT player_name,
       jersey_no,
       country_name,
       age,
       playing_club
FROM goal_details_csv a
JOIN player_mast_csv b ON a.player_id=b.player_id
JOIN soccer_country_csv c ON a.team_id=c.country_id
WHERE posi_to_play='DF'
ORDER BY player_name;
