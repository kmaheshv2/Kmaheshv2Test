{{ config(materialized='table', transient=false) }}

select * from {{ref("agents_stg")}}