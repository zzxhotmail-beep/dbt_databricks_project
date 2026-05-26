{% set inc_flag = 1%} 

{% set last_load = 3%}

{% set col_lists = ["sales_id", "date_sk", "customer_sk"] %}
SELECT 
    {%for i in col_lists%}
        {{i}} 
        {% if not loop.last %}, {%endif%}
    {%endfor%}

FROM {{ref('bronze_sales')}}

{% if inc_flag == 1%}
    WHERE date_sk >{{last_load}}
{%endif%}
