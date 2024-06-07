with
    agent_daily_sale as (
        select a.agent_code, agent_name, ord_date, sum(o.ord_amount) sum_ord_amt
        from {{ ref("orders_stg") }} o
        join {{ ref("agents_stg") }} a on a.agent_code = o.agent_code
        group by a.agent_code, agent_name, o.ord_date
        order by a.agent_code, o.ord_date
    )
select *
from agent_daily_sale
