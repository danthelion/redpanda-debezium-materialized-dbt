/*

The purpose of this model is to create an inventory_customers staging model.
Some initial cleaning can happen here & column renaming

 */



{{ config(
    materialized='view'
) }}


WITH source AS (

    SELECT * FROM {{ ref('inventory_customers') }}

),

renamed AS (

    SELECT

       id::numeric as id,
       first_name::string as first_name,
       last_name::string as last_name,
       email::string as email

    FROM source

)

SELECT * FROM renamed
