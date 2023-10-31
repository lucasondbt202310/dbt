select
	ID as payment_id,
	ORDERID as order_id,
    status,
	{{ cents_to_dollars('amount', 2) }} as amount,
    PAYMENTMETHOD as payment_method

from {{source('stripe','payment')}}