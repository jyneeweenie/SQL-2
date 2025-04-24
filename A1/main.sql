--create the nomnom table if it does not exist
create table if not exists nomnom(
name text,
neighbourhood text,
cuisine text,
review real,
price text,
health text
);
--insert sample data into the nomnom table
insert into nomnom(name, neighbourhood, cuisine, review, price, health) VALUES
('peter', 'brooklyn', 'steak', 4.4, '$$$$', 'a'),
('paul', 'mid town', 'korean', 4.7, '$$', 'a'),
('pier', 'mid town', 'pizza', 4.9, '$', 'b'),
('troy', 'queens', 'chinese', 4.4, '$$$', 'a'),
('jayden', 'down town', 'american', 4.4, '$$', ''),
('jayson', 'china town', 'chinese', 2.1, '$$$$', ''),
('jeff', 'up town', 'italian', 4.4, '$$$', 'b'),
('ethan', 'brooklyn', 'pizza', 4.9, '$$', 'a'),
('bube', 'up town', 'italian', 4.4, '$', 'a');
--select all records from the nomnom table
select * from nomnom;
--select distinct neighbourhoods from the nomnom table
select distinct neighbourhood from nomnom;
--select distinct cuisines from the nomnom table
select distinct cuisine from nomnom;
--select all records with chinese cuisine
select * from nomnom where cuisine = 'chinese';
--select all records with a review rating 4 or higher
select * from nomnom where review >= 4;
--select all records with italian cuisine and $$$ price
select * from nomnom where name like '%candy%';
--select all records where the neighbourhood is mid town, down town, or chinatown
select * from nomnom
where neighbourhood in ('mid town', 'down town', 'china town');
--select the top 4 records ordered by review rating in descending order
select * from nomnom order by review desc limit 4;