{{
    config(
        materialized='table'
    )
}}

{{ dep_counts('raw_department','raw_employee')}}
