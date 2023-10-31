{# adding a comment here #}

with payments as (

    select * from {{ ref('stg_payments')}}

),

orders as (

    select * from {{ ref('stg_orders')}}

),

order_payments as (
    select
        order_id,
        sum(case when status = 'success' then amount end) as amount

    from payments
    group by 1
),

final as (

    select
        o.order_id,
        o.customer_id,
        op.AMOUNT,
        o.order_date
    from orders o
    left join order_payments op using (order_id)  
)

select * from final