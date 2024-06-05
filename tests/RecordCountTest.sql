{% set expected_count = {"agents": 100} %}

{% for table, expected_count in expected_count.items() %}
    select
        {{ table }} as table_name,
        (
            select count(1)
            from
                {{ source("MYSTAGE", "AGT") }} as record_count,
                {{ expected_count }} as expected_count
            where
                (
                    select count(1)
                    from {{ source("MYSTAGE", "AGT") }} < {{ expected_count }}
                )
        )
    {% if not loop.last %}
        union all
    {% endif %}
{% endfor %}
