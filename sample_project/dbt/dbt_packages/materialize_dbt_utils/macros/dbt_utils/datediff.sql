{% macro materialize__datediff(first_date, second_date, datepart) %}

  {{ return(dbt_utils.postgres__datediff(first_date, second_date, datepart)) }}

{% endmacro %}
