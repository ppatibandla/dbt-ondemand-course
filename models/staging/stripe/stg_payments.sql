with payment as (
    select 
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status, amount/100 as amount
    from dbt_course_pavan.stripe.payment
)

select * from payment