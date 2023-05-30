EXPLAIN ANALYZE
select distinct e1.year, e1.eng_name
from enrollment e1
where (students5_estimated, year) in (select max(students5_estimated), year
from enrollment e2
group by e2.year)
order by year, eng_name;