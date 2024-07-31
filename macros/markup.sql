{% macro jyb_id(jg) %}

sum(case when job_id='{{jg}}' then 1 else 0 end)

{% endmacro %}