# Maintainer instructions

## Bumping dependency versions

To update the tested version of dbt-materialize, bump the version specification
in the `pip install` invocation in [.github/workflows/main.yml].

To update the tested version of `materialized`, bump the version specification
in the `services` specification in [.github/workflows/main.yml].

To update the embedded dbt-utils:

```shell
cd dbt-utils
git checkout main
git pull
cd ..
git commit -am 'Update dbt-utils'
```

We explicitly avoid depending on `latest` so that CI is deterministic. New

## Cutting a new release

1. Check out the latest `main` branch locally.

2. Bump the version number in [dbt_project.yml].

3. Add an entry for the new version to [CHANGELOG.md].

3. Make a PR with the above changes.

4. Merge the PR to `main`.

5. Pull the new commit locally:

   ```
   git checkout main
   git pull
   ```

6. Verify that you're on the version bump commit:

   ```
   git log
   # Make sure most recent commit is your version bump.
   ```

5. Create an annotated tag for the new version:

   ```
   git tag -a vX.Y.Z -m vX.Y.Z
   ```

6. Push that tag to GitHub:

   ```
   git push vX.Y.Z
   ```

4. Verify that CI passes on the tag and publishes a GitHub release.

[.github/workflows/main.yml]: .github/workflows/main.yml
[dbt_project.yml]: dbt_project.yml
[CHANGELOG.md]: CHANGELOG.md
