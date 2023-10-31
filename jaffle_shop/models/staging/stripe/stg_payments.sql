select
	ID as payment_id,
	ORDERID as order_id,
    status,
	AMOUNT/100 as amount,
    PAYMENTMETHOD

from {{source('stripe','payment')}}