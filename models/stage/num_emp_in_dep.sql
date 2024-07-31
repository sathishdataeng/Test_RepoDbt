{{
    config(
        materialized='table'
    )
}}


{{dep_count('raw_department','raw_employee')}}