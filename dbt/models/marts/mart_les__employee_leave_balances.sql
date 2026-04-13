select
    l.leave_balance_key,
    l.pay_period_key,
    p.pay_period_end_date,
    l.employee_pseudossn,
    l.employee_id,
    l.employee_full_name,
    l.leave_id,
    l.leave_name,
    l.leave_prior_year_balance_hours,
    l.leave_earned_current_period_hours,
    l.leave_earned_ytd_hours,
    l.leave_used_current_period_hours,
    l.leave_used_ytd_hours,
    l.leave_current_balance_hours
from {{ ref('int_les__employee_leave_balances') }} l
left join {{ ref('int_pay_calendar__periods') }} p
    on l.pay_period_key = p.pay_period_key
