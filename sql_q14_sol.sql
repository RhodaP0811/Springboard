SELECT c.referee_name,
       count(b.match_no)
FROM player_booked_csv a
JOIN match_mast_csv b ON a.match_no=b.match_no
JOIN referee_mast_csv c ON b.referee_id=c.referee_id
GROUP BY referee_name
ORDER BY 2 DESC;
