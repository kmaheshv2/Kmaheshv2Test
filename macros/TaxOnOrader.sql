{% macro taxOnOrader(ORD_AMOUNT,SALE_DUTY_PRCNT)%}
(
    ROUND((ORD_AMOUNT*SALE_DUTY_PRCNT/100),0)   
)
{% endmacro%}