{{ config(
    materialized ='materializedview'
) }}


select *
from {{ ref('stg_inventory_customers') }}
