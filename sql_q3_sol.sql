SELECT 	match_no,
		play_date,
        goal_score
FROM match_mast_csv
WHERE stop1_sec = 0
;
   
SELECT d.match_no, m.play_date, m.goal_score 
FROM match_mast_csv m 
JOIN match_details_csv d 
ON m.match_no=d.match_no
JOIN soccer_country_csv s 
ON d.team_id=s.country_id
WHERE stop1_sec=0;