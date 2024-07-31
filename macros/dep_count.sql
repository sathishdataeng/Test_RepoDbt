{% macro dep_count(dep_tbl,emp_tbl) %}

select {{dep_tbl}}.department_name ,count{{emp_tbl}}.employee_id) as num_employ
from {{dep_tbl}} inner join {{emp_tbl}} on {{dep_tbl}}.department_id={{emp_tbl}}.department_id
group by {{dep_tbl}}.department_name


{% endmacro %}
