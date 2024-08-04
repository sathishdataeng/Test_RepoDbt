{{
    config(
        tags = ["hr_info"]
    )
}}


{{
    config(
        materialized='table'
    )
}}

select * from  {{ source('Test_dbt', 'employee') }}


