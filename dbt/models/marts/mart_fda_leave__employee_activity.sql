select
    a.fda_leave_activity_key,
    a.fda_batch_id,
    a.ticket_number,
    a.employee_id,
    a.pay_period_key,
    p.pay_period_end_date,
    a.record_type,
    a.sequence_number,
    a.leave_transaction_payload
from {{ ref('int_fda_leave__employee_activity') }} a
left join {{ ref('int_pay_calendar__periods') }} p
    on a.pay_period_key = p.pay_period_key
