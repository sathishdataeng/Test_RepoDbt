{{
    config(
        materialized='table'
    )
}}

select * from DBT_NEW_MODEL.LAUNCH_SCHEMA.region