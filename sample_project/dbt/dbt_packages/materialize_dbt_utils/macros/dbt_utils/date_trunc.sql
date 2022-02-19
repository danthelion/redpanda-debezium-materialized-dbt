{% macro materialize__date_trunc(datepart, date) %}
    date_trunc(
        {{datepart}},
         cast({{date}} as timestamp)
    )
{% endmacro %}
