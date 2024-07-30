{{
    config(
        materialized='table'
    )
}}

select * from DBT_NEW_MODEL.Test.COUNTRY