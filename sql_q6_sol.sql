SELECT COUNT(*) as 'No of matches won by single point'
FROM match_details_csv
WHERE win_lose='W' 
AND decided_by<>'P'
AND goal_score=1;