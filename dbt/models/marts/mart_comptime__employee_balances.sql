select
    c.comp_time_daily_key,
    c.employee_ssn,
    d.employee_pseudossn,
    coalesce(d.employee_full_name, c.employee_name) as employee_full_name,
    c.current_account_code,
    c.current_org_code,
    c.flsa_status,
    c.comp_time_current_balance_hours,
    c.comp_time_year_earned,
    c.pay_period_end_date,
    c.earned_date,
    c.comp_time_rate,
    c.comp_time_hours
from {{ ref('int_comptime__employee_daily_balances') }} c
left join {{ ref('int_pseudossn__employee_directory') }} d
    on c.employee_ssn = d.employee_ssn
