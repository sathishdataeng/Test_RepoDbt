select * from {{ ref('raw_employee') }} where employee_id is null