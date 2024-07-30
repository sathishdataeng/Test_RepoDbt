{{
    config(
        materialized='table'
    )
}}
with temptb as (
(select * from DBT_NEW_MODEL.Test.COUNTRY
union all
(select * from {{ ref('erd_dbt') }})
)
select * from temptb