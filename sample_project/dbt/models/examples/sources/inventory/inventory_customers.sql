{{ config(materialized='source') }}

{% set source_name %}
    {{ mz_generate_name('inventory_customers') }}
{% endset %}

CREATE SOURCE {{ source_name }}
FROM KAFKA BROKER 'redpanda:9092' TOPIC 'dbserver1.inventory.customers'
FORMAT AVRO USING CONFLUENT SCHEMA REGISTRY 'http://redpanda:8081'
ENVELOPE DEBEZIUM;