select
    (pp_end_year::varchar || lpad(pp_num::varchar, 2, '0')) as pay_period_key,
    les_number::number(18,0) as les_number,
    pseudossn as employee_pseudossn,
    leave_id::number(18,0) as leave_id,
    leave_name,
    leave_prior_year_bal::number(12,2) as leave_prior_year_balance_hours,
    leave_earned_cpp::number(12,2) as leave_earned_current_period_hours,
    leave_earned_ytd::number(12,2) as leave_earned_ytd_hours,
    leave_used_cpp::number(12,2) as leave_used_current_period_hours,
    leave_used_ytd::number(12,2) as leave_used_ytd_hours,
    leave_curr_bal::number(12,2) as leave_current_balance_hours
from {{ ref('raw_les__leave_detail') }}
