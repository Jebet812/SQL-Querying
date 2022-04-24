SELECT *
FROM OLYMPIC_HISTORY
1. Find the total no of summer olympic games.
2. Find for each sport, how many games were they played in
3. Compare 1 and 2

with t1 as
    (Select count (distinct Games) As total_summer_games
	 From OLYMPIC_HISTORY
	 Where Season = 'Summer'),

t2 as
    (select distinct sport, games
	 From Olympic_History
	 Where Season = 'Summer'
	 Order by Games),

t3 as
     (Select Sport, Count (games) As No_of_Games
	  From t2
	  Group by sport)
	  
Select *
From t3 
Join t1 on t1.total_summer_games = t3.No_of_Games