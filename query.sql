select *
from actor;

-- Where clause
select *
from actor
where first_name = 'NICK'
   or last_name = 'WAHLBERG' and first_name = 'DARYL';

-- Concatenation
select concat(last_name, ', ', first_name) as full_name
from actor;

-- Aliasing
select *
from (select concat(last_name, ', ', first_name) as full_name
      from actor) x
where full_name = 'WAHLBERG, NICK';

-- Case logic
select case
           when first_name = 'NICK' then 'NICHOLAS'
           when first_name = 'ED' then 'EDWARD'
           else first_name
           end as first_name
from actor;

-- Restricting number of rows
select *
from actor
limit 5;

-- Random selection
select *
from actor
order by random()
limit 5;