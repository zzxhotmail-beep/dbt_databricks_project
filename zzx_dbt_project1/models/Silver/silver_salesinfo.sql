 WITH sales AS(
    SELECT 
        sales_id, 
        product_sk, 
        customer_sk,
        {{multiply('unit_price', 'quantity')}} AS calculated_gross_amount,
        gross_amount, 
        payment_method
    FROM {{ref("bronze_sales")}}
 ),

products AS(
    SELECT
        product_sk,
        category
    FROM {{ ref('bronze_product') }}
),
customers AS(
    SELECT
        customer_sk,
        gender
    FROM {{ref("bronze_customer")}}
),
joined AS(
SELECT 
    sales.sales_id, 
    sales.gross_amount, 
    sales.calculated_gross_amount,
    sales.payment_method,
    products.category,
    customers.gender

FROM sales

INNER JOIN products
    on sales.product_sk = products.product_sk

INNER JOIN customers
    on sales.customer_sk = customers.customer_sk
)

SELECT 
    category, 
    gender,
    SUM(gross_amount) AS total_sales
FROM joined
GROUP BY category, gender
ORDER BY category ASC, total_sales DESC



