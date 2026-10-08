show tables;

select count(*)
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER c
join SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.NATION n
on c.c_nationkey = n.n_nationkey
where n.n_name = 'VIETNAM';
--limit 10;

select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.NATION;

create or replace table CUSTOMER
as 
select *, CURRENT_DATE(),CURRENT_USER() from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER;

show tables;

drop table MATILLION_LEARNING.BRONZE."CHINA_CUSTOMERS";

select count(*) as FLAG
from INFORMATION_SCHEMA.TABLES 
where table_name ilike '%INDIA%'


/*
Amazon S3 --> Copy into command

external stage --> Storage integration
table 
file format 
*/