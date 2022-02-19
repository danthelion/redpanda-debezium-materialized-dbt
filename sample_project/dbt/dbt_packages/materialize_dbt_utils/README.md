# materialize-dbt-utils

This [dbt](https://github.com/fishtown-analytics/dbt) package contains macros
that:
- can be (re)used across dbt projects running on Materialize
- define Materialize-specific implementations of [dispatched macros](https://docs.getdbt.com/reference/dbt-jinja-functions/adapter/#dispatch) from other packages

## Installation Instructions

Check [dbt Hub](https://hub.getdbt.com) for the latest installation
instructions, or [read the docs](https://docs.getdbt.com/docs/package-management)
for more information on installing packages.

## Macros

The following sections document the macro support for Materialize. For more information
about the macros themselves, please visit [`dbt_utils`](https://github.com/fishtown-analytics/dbt-utils).

### Cross-database

| Name | Supported? | Notes |
|------|------------|-------|
| `current_timestamp` | :x: | Materialize does not support creating views with `current_timestamp` |
| `dateadd` | :x: | TODO |
| `datediff` | :x: | TODO |
| `split_part` | :white_check_mark: | |
| `date_trunc` | :x: | TODO |
| `last_day` | :x: | TODO |
| `width_bucket` | :x: | Will not be supported, not relevant to Materialize |

### Date/Time
| Name | Supported? | Notes |
|------|------------|-------|
| `date_spine` | :x: | Requires `generate_series()` support |

### Geo
| Name | Supported? | Notes |
|------|------------|-------|
| `haversine_distance` | :x: | Will not be supported |

### Schema Tests
| Name | Supported? | Notes |
|------|------------|-------|
| `equal_rowcount` | :white_check_mark: | |
| `equality` | :white_check_mark: | |
| `expression_is_true` | :white_check_mark: | |
| `recency` | :x: | Materialize does not support creating views with `current_timestamp` |
| `at_least_one` | :white_check_mark: | |
| `not_constant` | :white_check_mark: | |
| `cardinality_equality` | :white_check_mark: | |
| `unique_where` | :white_check_mark: | |
| `not_null_where` | :white_check_mark: | |
| `relationships_where` | :white_check_mark: | |
| `mutually_exclusive_ranges` | :x: | Will not be supported, Materialize does implement window functions |
| `unique_combination_of_columns` | :white_check_mark: | |

### SQL Helpers
| Name | Supported? | Notes |
|------|------------|-------|
| `get_query_results_as_dict` | :white_check_mark: | |
| `get_column_values` | :white_check_mark: | |
| `get_relations_by_prefix` | :white_check_mark: | |
| `group_by` | :question: | Untested |
| `star` | :white_check_mark: | |
| `union_relations` | :question: | Untested |
| `generate_series` | :x: | Requires `pow()` support |
| `surrogate_key` | :x: | Requires `md5` support |
| `safe_add` | :white_check_mark: | |
| `pivot` | :x: | TODO |
| `unpivot` | :white_check_mark: | |

### Web
| Name | Supported? | Notes |
|------|------------|-------|
| `get_url_parameter` | :question: | Untested |
| `get_url_host` | :question: | Untested |
| `get_url_path` | :x: | TODO |

### Logger
| Name | Supported? | Notes |
|------|------------|-------|
| `pretty_time` | :question: | Untested |
| `pretty_log_format` | :question: | Untested |
| `log_info` | :question: | Untested |

### Materializations
| Name | Supported? | Notes |
|------|------------|-------|
| `insert_by_period` | :question: | Untested |

### Getting started with dbt + Materialize

- [What is dbt](https://docs.getdbt.com/docs/introduction)?
- [Installation](https://github.com/MaterializeInc/dbt-materialize)
- Join [dbt's Slack](http://slack.getdbt.com/)
- Join [Materialize's Slack](https://materialize.com/)
