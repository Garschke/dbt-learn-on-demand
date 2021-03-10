{{ config (
    materialized="table"
)}}

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2019-01-01' as date)",
    end_date="cast('2020-01-01' as date)"
   )
}}

{# instead of "cast('2019-01-01' as date)" we could use "todate('2019-01-01', 'mm/dd/yyyy')" #}