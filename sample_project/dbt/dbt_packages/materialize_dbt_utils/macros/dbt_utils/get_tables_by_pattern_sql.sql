
{% macro materialize__get_tables_by_pattern_sql(schema_pattern, table_pattern, exclude='', database=target.database) %}

        SELECT mz_schemas.name   AS table_schema,
               mz_relations.name AS table_name,
               CASE type
                      WHEN 'table' THEN 'table'
                      ELSE 'view'
               END AS "table_type"
        FROM   mz_catalog.mz_relations
        JOIN   mz_catalog.mz_schemas
        ON     mz_relations.schema_id = mz_schemas.id
        WHERE  mz_relations.type IN ('table',
                                     'view')
        AND    mz_schemas.name ilike '{{ schema_pattern }}'
        AND    mz_relations.name ilike '{{ table_pattern }}'
        AND    mz_relations.name NOT ilike '{{ exclude }}';

{% endmacro %}
