select 'cpm_cdc' as source_system, * from {{ ref('raw_cpm_cdc__newpay') }}
