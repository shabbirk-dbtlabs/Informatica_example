# Informatica to dbt migration

This dbt project is the target-state replacement for the legacy Informatica ETL assets stored elsewhere in this repository.

## What is in this first migration pass

- Mock raw source data loaded with dbt seeds into Snowflake schema `ANALYTICS.INFORMATICA_MIGRATION`
- Consistent dbt model layers under `models/raw`, `models/staging`, `models/intermediate`, and `models/marts`
- Subject-area coverage for `comptime`, `cpm`, `cpm_afps`, `cpm_cdc`, `cpm_nih`, `cpm_oig`, `fda_leave`, `les`, `pay_calendar`, `pseudossn`, and `ehrp2biis_update`
- Folder-level YAML documentation and tests

## Structure

- `seeds/mock_informatica/`: mock source extracts used until upstream source loads are available in Snowflake
- `models/raw/`: thin source-aligned passthrough models
- `models/staging/`: renamed and typed models
- `models/intermediate/`: reusable business-conformed building blocks
- `models/marts/`: analyst-facing marts

## Notes

- The Informatica exports are large and highly procedural. This migration normalizes them into dbt-friendly, modular transformations rather than reproducing session-level mechanics one-to-one.
- The `cpm_*` variants are standardized independently in lower layers and then combined in marts where that makes sense.
- Once real source tables are available in Snowflake, the seed-backed source definitions can be swapped to point at landed raw tables with minimal downstream change.
