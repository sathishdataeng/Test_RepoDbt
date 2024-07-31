

{{
    config(
        materialized='table'
    )
}}


select {{ dbt_utils.generate_surrogate_key(['EMPLOYEE_ID', 'FIRST_NAME','JOB_ID']) }} ,employee_id,first_name,{{sal_hike(25)}} as After_sal_hike from {{ ref('raw_employee') }}

select * from {{ ref('raw_employee') }}