--- Testing queries
select * from [Profile]
select * from [User]

select P.genre, count(P.genre) cnt 
from Viewing_History VH
join Program P 
on VH.P_id = P.P_id 
group by P.genre,VH.profile_id
having VH.profile_id = '1-1'

--- Recommendations for a certain profile
with x as
(select P.genre,count(P.genre) cnt 
from Viewing_History VH
join Program P 
on VH.P_id = P.P_id 
where VH.profile_id = '1-1'-- hard code the profile_id
group by P.genre)

select P_id,name 
from Program 
where genre = (select genre from x where cnt = (select max(cnt) from x))
and rating >= 
	(select avg(rating) from Program where genre = 
		(select genre from x where cnt = (select max(cnt) from x)) 
		group by genre)
and P_id not in
(
select P_id
from Viewing_History
where profile_id = '1-1' -- hard code the profile_id agian
)
