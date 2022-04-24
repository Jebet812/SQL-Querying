with t1 as
       (Select name, count (1) Total_medals
	   From Olympic_History
	   Where Model  = 'Gold'
	   Group by name
	   Order by count (1) desc),
t2 as 
       (select *, dense_rank() over (order by total_medals desc) as rank
	   from t1)
select *
From t2
where rank <=5;
	   





