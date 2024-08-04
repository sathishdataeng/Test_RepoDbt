{{
    config(
        materialized='table'
    )
}}

select * from  {{ source('Test_dbt', 'employee') }}


select job_id,count(job_id) from data_dbt.data_schema.raw_employee group by job_id having count(*)>1


with child as (
    select DEPARTMENT_ID as from_field
    from data_dbt.data_schema.raw_employee
    where DEPARTMENT_ID is not null
),

parent as (
    select DEPARTMENT_ID as to_field
    from data_dbt.data_schema.raw_department
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null