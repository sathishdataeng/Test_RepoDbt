{{
    config(
        materialized='incremental'
    )
}}

select * from {{ source('employee', 'emp_src') }}




{%- if is_incremental() -%}

  -- this filter will only be applied on an incremental run
  -- (uses >= to include records whose timestamp occurred since the last run of this model)
  -- (If event_time is NULL or the table is truncated, the condition will always be true and load all records)
  where received_at >= (select max(received_at) from {{ this }} )
{%- endif -%}