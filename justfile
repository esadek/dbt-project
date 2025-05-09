seed:
    uv run dbt seed

deps:
    uv run dbt deps

run:
    uv run dbt run

test: deps seed run
    uv run dbt test

lint:
    uv run sqlfluff lint
    uv run yamllint .
    uv run ruff check --fix

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
