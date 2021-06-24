SELECT match_no, Booked FROM (
SELECT match_no,COUNT(*) Booked 
FROM player_booked_csv  
GROUP BY match_no) as Match1 where Booked=(
SELECT MAX(Match1) 
FROM (SELECT match_no,COUNT(*) Match1 
FROM player_booked_csv  
GROUP BY match_no) Match2);