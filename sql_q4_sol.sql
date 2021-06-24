SELECT 	count(*), 
        play_half,
		play_schedule  
FROM player_in_out_csv
WHERE in_out = 'I'
GROUP BY play_half, play_schedule 
order by 1;