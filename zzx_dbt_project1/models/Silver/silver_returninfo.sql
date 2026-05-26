 WITH b_return AS(
    SELECT 
        sales_id,
        store_sk, 
        product_sk, 
        return_reason, 
        refund_amount
    FROM {{ref("bronze_returns")}}
 ),

products AS(
    SELECT
        product_sk,
        category
    FROM {{ ref('bronze_product') }}
),
store AS(
    SELECT
        store_sk,
        store_name,
        city,
        country
    FROM {{ref("bronze_store")}}
),

joined AS(
SELECT 
    b_return.sales_id, 
    b_return.return_reason, 
    b_return.refund_amount, 
    products.category,
    store.store_name,
    store.city,
    store.country

FROM b_return

INNER JOIN products
    on b_return.product_sk = products.product_sk

INNER JOIN store
    on b_return.store_sk = store.store_sk

)

SELECT 
    store_name,
    return_reason, 
    SUM(refund_amount) AS total_refund
    
FROM joined
GROUP BY store_name,return_reason
ORDER BY return_reason ASC, total_refund DESC