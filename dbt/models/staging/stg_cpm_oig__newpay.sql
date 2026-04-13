select 'cpm_oig' as source_system, * from {{ ref('raw_cpm_oig__newpay') }}
