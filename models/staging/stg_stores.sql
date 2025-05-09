select
    id as store_id,
    name as store_name,
    tax_rate,
    {{ dbt.date_trunc('day', 'opened_at') }} as opened_date
from {{ source('ecom', 'raw_stores') }}
