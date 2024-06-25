select 
    {{dbt_utils.generate_surrogate_key(['order_id','created_at'])}}
    order_id,
    created_at as order_date
    
    from {{ref('stg_stripe__payments')}}
  