

{{
    config(
        materialized='table'
    )
}}


select employee_id,first_name,{{sal_hike(25)}} as After_sal_hike from {{ ref('raw_employee') }}