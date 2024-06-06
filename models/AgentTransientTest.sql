{{ config(materialized='table', transient=true) }}

select * from {{ref("agents_stg")}}