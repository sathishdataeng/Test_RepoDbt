{{
    config(
        materialized='table'
    )
}}

select * from  {{ source('Test_dbt', 'employee') }}


select job_id,count(job_id) from data_dbt.data_schema.raw_employee group by job_id having count(*)>1
