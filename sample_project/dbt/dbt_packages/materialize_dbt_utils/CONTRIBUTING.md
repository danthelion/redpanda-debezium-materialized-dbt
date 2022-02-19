# Contributing

We welcome contributions to this repo! To contribute a new feature or a fix,
please open a Pull Request with 1) your changes and 2) updated documentation for
the `README.md` file.

## Testing

To run the integration tests, do the following:

1. [Run `materialized` locally](https://materialize.com/docs/get-started/#install-run-connect).

2. Add the following profile to your profiles.yml file to configure the
   integration tests to run against the `materialized` process you just started:

   ```yml
   integration_tests:
     outputs:
       materialize:
         type: materialize
         threads: 1
         host: localhost
         port: 6875
         user: materialize
         password: ignored
         dbname: materialize
         schema: public
   ```

   You can run `dbt debug` to locate your profiles.yml file if necessary.

3. Run the tests:

   ```
   cd integration_tests/dbt_utils
   make test-materialize [TARGET=custom-profile-target-name]
   ```
