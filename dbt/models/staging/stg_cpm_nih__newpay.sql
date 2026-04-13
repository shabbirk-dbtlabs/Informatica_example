select 'cpm_nih' as source_system, * from {{ ref('raw_cpm_nih__newpay') }}
