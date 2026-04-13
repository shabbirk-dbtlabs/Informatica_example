select
    (pp_end_year::varchar || lpad(pp_num::varchar, 2, '0')) as pay_period_key,
    pp_num::number(4,0) as pay_period_number,
    pp_end_year::number(6,0) as pay_period_end_year,
    pp_start_dte::date as pay_period_start_date,
    pp_end_dte::date as pay_period_end_date,
    lv_num::number(4,0) as leave_period_number,
    lv_year::number(6,0) as leave_period_year,
    pay_dte::date as pay_date,
    curr_pp_flag as is_current_pay_period_flag
from {{ ref('raw_pay_calendar__pay_period') }}
