{{
    config(
        materialized='incremental'
    )
}}
select *
from {{ ref("agents_stg") }}
