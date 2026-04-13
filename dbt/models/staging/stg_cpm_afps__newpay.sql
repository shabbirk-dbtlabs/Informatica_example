select 'cpm_afps' as source_system, * from {{ ref('raw_cpm_afps__newpay') }}
