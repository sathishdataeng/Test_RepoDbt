with tmp as(
    select * from {{ ref('raw_employee') }}
)

select job_id,count(job_id) from {{ ref('raw_employee') }} group by job_id having count(*)>1

