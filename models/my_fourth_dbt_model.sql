{{
    config(
        materialized='table'
    )
}}
with temptb as (
(select * from DBT_NEW_MODEL.Test.COUNTRY
union all
(select * from {{ ref('my_third_dbt_model') }})
)
select * from temptb
