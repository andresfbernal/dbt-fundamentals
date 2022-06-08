select 
    id as customer_id,
    orderid as order_id,
    amount / 100 as amount, 
    paymentmethod, 
    status 

from {{ source('stripe', 'payment') }}