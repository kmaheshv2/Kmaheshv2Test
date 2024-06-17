{% for i in range(1, 10) %}
    select {{ i }} as number {{ i }} {% if not loop.last %} {% endif %}
{% endfor %}
