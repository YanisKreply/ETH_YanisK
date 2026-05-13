select
date,
transaction_category,
count(*) as tx_count,
{{eth.conversion('value','18')}} as sum_eth_value

from {{ ref('int_transaction_enriched') }}

group by 
date, 
transaction_category

