select
    ssn as employee_ssn,
    name as employee_name,
    current_acct as current_account_code,
    current_org as current_org_code,
    flsa_status,
    comp_time_cur_bal::number(12,2) as comp_time_current_balance_hours,
    comp_time_year_earned::number(4,0) as comp_time_year_earned,
    pp_end_date::date as pay_period_end_date,
    daily_date_earned::date as earned_date,
    comp_time_rate::number(8,2) as comp_time_rate,
    comp_time_hours::number(12,2) as comp_time_hours,
    comp_time_undef::number(12,2) as comp_time_undefined_hours
from {{ ref('raw_comptime__daily_tbl') }}
