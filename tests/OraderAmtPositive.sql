select * from {{ ref("orders_stg") }} where ord_amount < 0
