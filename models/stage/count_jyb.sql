{{
    config(
        materialized='table'
    )
}}

select job_id, {{jyb_id('AD_PRES')}} as AD_PRES_CNT,{{jyb_id('AD_VP')}} as AD_VP_CNT
from {{ ref('raw_employee') }}
group by job_id