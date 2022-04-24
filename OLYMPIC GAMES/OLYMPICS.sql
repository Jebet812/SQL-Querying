DROP TABLE IF EXISTS OLYMPIC_HISTORY;
CREATE TABLE IF NOT EXISTS OLYMPIC_HISTORY
(
	ID int,
	Name varchar,
    Sex varchar,
	Age varchar,
	Height varchar,
	Weight varchar,
	Team varchar,
	Noc varchar,
	Games varchar,
	Year int,
	Season varchar,
	City varchar,
	Sport varchar,
	Event varchar,
	Model varchar	
)
 
 
DROP TABLE IF EXISTS OLYMPIC_HISTORY_NOC_REGIONS;
CREATE TABLE IF NOT EXISTS OLYMPIC_HISTORY_NOC_REGIONS
(
	NOC varchar,
	Region varchar,
	Notes varchar
)

Select COUNT (1)
From OLYMPIC_HISTORY

Select COUNT (1)
From OLYMPIC_HISTORY_NOC_REGIONS



	