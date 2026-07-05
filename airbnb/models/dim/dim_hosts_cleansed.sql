with src_hosts AS (
    SELECT *
    FROM {{ ref('src_hosts') }}
)
select  host_id,
        case when host_name is null then 'Anonymous'
             else host_name end as host_name,
        is_superhost,
        created_at,
        updated_at
from src_hosts