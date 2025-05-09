select
    id as customer_id,
    name as customer_name
from {{ source('ecom', 'raw_customers') }}
