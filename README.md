# MDMProjectGroup

Need to do: 
-figure out how to code a composite key (primary/foreign key)
-Allison: still need to do TV episodes - I think it's going to be too much though... wondering what kind of analysis we're going to do with TV Episodes table

Updates:
-took out TV_id and M_id from Profile
-V_id is the date
-Took out ratings b/c Netflix turned it into a thumbs up/down, percentage of match


--- Allison ---
04/05/17 - Did 7 TV shows and 5 Movies
 
Updates:
- fixed composite key by putting ',' in between when creating PK
(PRIMARY KEY ("A_id","P_id"),)
- added 'supervisor_id' for 'Profile'
- changed the data type of 'year' in 'Program' from int to char(4)
- added 'date' for 'Viewing_History'
- changed the order of creating tables and insert values to make sure they could be executed in SQL server
(eg.if FK of table B refers to PK of table A, table A must be created before table B)
- insert 5 more record in 'Viewing_History' based on current Programs (as I think we already have enough programs and actors)
- also updated the diagrams in Lucidchart accordingly (https://www.lucidchart.com/documents/edit/a8b3fe0e-c629-4fce-9e51-e8b2295bce75)

--- Monffy ---
04/07/17
