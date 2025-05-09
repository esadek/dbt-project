select
    id as item_id,
    order_id,
    sku as product_id
from {{ source('ecom', 'raw_items') }}
