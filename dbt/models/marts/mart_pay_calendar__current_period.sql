select *
from {{ ref('int_pay_calendar__periods') }}
where is_current_pay_period
