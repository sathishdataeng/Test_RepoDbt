
{{
    config(
        materialized='table'
    )
}}


{% set job_ids= ["IT_PROG","AD_PRES","ST_CLERK","SA_REP"]%}

select job_id,
{%- for j_id in job_ids -%}
sum(case when job_id='{{j_id}}' then salary end) as {{j_id}}_tot_amt
{% if not loop.last %},{% endif %}
{%- endfor -%}
from {{ ref('raw_employee') }} group by 1