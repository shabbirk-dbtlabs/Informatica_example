select
    md5(employee_ssn || '|' || to_varchar(earned_date)) as comp_time_daily_key,
    employee_ssn,
    employee_name,
    current_account_code,
    current_org_code,
    flsa_status,
    comp_time_current_balance_hours,
    comp_time_year_earned,
    pay_period_end_date,
    earned_date,
    comp_time_rate,
    comp_time_hours,
    comp_time_undefined_hours
from {{ ref('stg_comptime__daily_balances') }}
