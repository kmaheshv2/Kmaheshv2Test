select ORD_NUM, ORD_AMOUNT, {{taxOnOrader(ORD_AMOUNT,SALE_DUTY_PRCNT)}} AS TAX_AMOUNT
from {{ref("orders_stg") }} O
CROSS JOIN taxpercentage T