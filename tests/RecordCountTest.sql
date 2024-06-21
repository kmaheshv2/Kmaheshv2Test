{% set expected_count = {"'agents'": 100} %}

{% for table, expected_count in expected_count.items() %}
    select {{ table }} as table_name, rec_cnt
    from (select count(1) as rec_cnt from {{ source("MYSTAGE", "AGT") }})
    where rec_cnt > {{ expected_count }}
    {% if not loop.last %}
        union all
    {% endif %}
{% endfor %}
