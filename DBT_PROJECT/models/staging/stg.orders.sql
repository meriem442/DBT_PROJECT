with source as (
    select * from {{ source('jaffle_shop', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        ordered_at as order_ordered_at
    from source
)
select * from renamed