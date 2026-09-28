   select
       id,
       count(*) as order_count
   from {{ ref('raw_orders.csv') }}
   group by id