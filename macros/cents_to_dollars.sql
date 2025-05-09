{% macro cents_to_dollars(column_name) -%}
    cast({{ column_name }} as decimal(16, 2)) / 100
{%- endmacro %}
