{% snapshot product_id_snapshot %}


{{
    config(
      target_database='data_dbt',
      target_schema='snapshots',
      unique_key='Product_id',

      strategy='timestamp',
      updated_at='price_effective_date',
    )
}}


select * from {{ source('Test_dbt', 'raw_product') }}

{% endsnapshot %}