{{
    config(
        tags = ["hr_details","hr_msg"]
    )
}}


{{
    config(
        materialized='table'
    )
}}

select * from  {{ source('Test_dbt', 'department') }}