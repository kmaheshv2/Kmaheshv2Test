validateField.sql
{% test validateField1(model, column_name) %}
    select {{ column_name }} from {{ MYSTAGE }} where trim({{ column_name }}) = ''
{% endtest %}