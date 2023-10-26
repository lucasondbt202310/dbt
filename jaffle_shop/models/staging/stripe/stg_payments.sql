select
	ID as payment_id,
	ORDERID as order_id,
    status,
	AMOUNT/100 as amount

from RAW.STRIPE.PAYMENT