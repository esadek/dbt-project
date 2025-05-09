seed:
    uv run dbt seed

deps:
    uv run dbt deps

run:
    uv run dbt run

test:
    uv run dbt test

test-ci: deps seed run
    uv run dbt test

lint:
    uv run sqlfluff lint
    uv run yamllint .
    uv run ruff check --fix

lint-ci: deps
    uv run sqlfluff lint --format github-annotation-native
    uv run yamllint .
    uv run ruff check --output-format=github .

format:
    uv run sqlfluff format
    uv run ruff format

docs:
    uv run dbt docs generate
    uv run dbt docs serve

clean:
    uv run dbt clean
    rm -rf warehouse.duckdb
    rm -rf .ruff_cache
