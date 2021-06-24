SELECT venue_name as 'Venue'
FROM soccer_venue_csv
WHERE venue_id IN
    (SELECT venue_id
     FROM match_mast_csv m,
          penalty_shootout_csv p 
     WHERE m.match_no = p.match_no)
     ;