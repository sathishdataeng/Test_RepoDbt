{% snapshot product_snapshot_scd2.sql %}


{{
    config(
          target_schema = 'snapshots',
          unique_key = 'Product_id',
          strategy = 'check',
          check_cols = ['price','price_effective_date','last_modified_date'],
           )
}}

 select * from {{ source('Test_dbt', 'raw_product') }}

{% endsnapshot %}