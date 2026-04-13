select * from {{ ref('int_cpm__payroll_snapshot') }} where 1 = 0
union all
select
    source_system,
    (pp_end_year::varchar || lpad(pp_num::varchar, 2, '0')) as pay_period_key,
    dfas_pseudo_ssn as employee_pseudossn,
    ehrp_emp_id as employee_id,
    fir_name_1 || ' ' || surname_3 as employee_full_name,
    pyf_pay_det_cd as pay_detail_code,
    occup_cde as occupation_code,
    job_loc_cde as job_location_code,
    org_cde as organization_code,
    pay_basis
from {{ ref('stg_cpm_cdc__newpay') }}
