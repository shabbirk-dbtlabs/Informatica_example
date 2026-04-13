select
    pay_period_key,
    pay_period_number,
    pay_period_end_year,
    pay_period_start_date,
    pay_period_end_date,
    pay_date,
    case when is_current_pay_period_flag = 'Y' then true else false end as is_current_pay_period
from {{ ref('stg_pay_calendar__pay_period') }}
