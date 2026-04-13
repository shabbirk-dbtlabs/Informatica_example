select
    md5(l.employee_pseudossn || '|' || l.pay_period_key || '|' || l.leave_id::varchar) as leave_balance_key,
    l.pay_period_key,
    l.employee_pseudossn,
    d.employee_id,
    d.employee_full_name,
    l.leave_id,
    l.leave_name,
    l.leave_prior_year_balance_hours,
    l.leave_earned_current_period_hours,
    l.leave_earned_ytd_hours,
    l.leave_used_current_period_hours,
    l.leave_used_ytd_hours,
    l.leave_current_balance_hours
from {{ ref('stg_les__leave_detail') }} l
left join {{ ref('int_pseudossn__employee_directory') }} d
    on l.employee_pseudossn = d.employee_pseudossn
