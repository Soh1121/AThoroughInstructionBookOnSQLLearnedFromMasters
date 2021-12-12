SELECT std_id,
       CASE WHEN COUNT(*) = 1
            THEN MAX(club_id)
	    ELSE MAX(CASE WHEN mai_club_flg = 'Y'
	                  THEN club_id
		     ELSE NULL END) END AS main_club
  FROM StudentClub
 GROUP BY std_id;
