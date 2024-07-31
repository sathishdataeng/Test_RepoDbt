{% macro sal_hike(hike_per) %}

(salary+ (salary*({{hike_per}}/100)))

{% endmacro %}