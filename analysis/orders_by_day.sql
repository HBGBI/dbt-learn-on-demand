with daily as (
    select
    count(id) as order_num,
    order_date
    from {{ source('jaffle_shop','orders') }}
    group by 2

),

compared as (

    select *,
    lag(order_num) over (order by order_date) as previous_day_orders
from daily

)

select * from compared
