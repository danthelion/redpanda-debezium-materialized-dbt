TARGET ?= materialize

test-materialize:
	dbt deps
	dbt seed --target $(TARGET)
	dbt run --target $(TARGET)
	dbt test --target $(TARGET)
