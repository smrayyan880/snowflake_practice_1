--here we are creating views, transient and base tables using dynamic names instead of hardcode

{{
    config(
        materialized='table',
        transient=false
    )
}}
select c_custkey,c_name,c_address from {{ source('src1', 'tbl_customers') }} limit 30