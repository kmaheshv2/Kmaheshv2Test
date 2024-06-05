{% snapshot customersnapshot%}
{{config(
    target_schema="DBT_MKULKARNI",
    unique_key="CUST_CODE",
    strategy="timestamp",
    updated_at="grade",
      )
 }}
 select * from {{ source("MYSTAGE","CUST") }}
 {% endsnapshot%}