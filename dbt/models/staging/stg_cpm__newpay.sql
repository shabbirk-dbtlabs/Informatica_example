select 'cpm' as source_system, * from {{ ref('raw_cpm__newpay') }}
