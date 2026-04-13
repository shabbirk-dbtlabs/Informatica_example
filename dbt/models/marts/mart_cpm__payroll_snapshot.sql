select * from {{ ref('int_cpm__payroll_snapshot') }}
union all
select * from {{ ref('int_cpm_afps__payroll_snapshot') }}
union all
select * from {{ ref('int_cpm_cdc__payroll_snapshot') }}
union all
select * from {{ ref('int_cpm_nih__payroll_snapshot') }}
union all
select * from {{ ref('int_cpm_oig__payroll_snapshot') }}
