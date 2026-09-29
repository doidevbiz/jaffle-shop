  select
    customer_id,
    count(*) as order_count,
    sum(order_total) as total_spent
from {{ ref('orders') }}   -- mart-level orders, not stg_orders
group by customer_id