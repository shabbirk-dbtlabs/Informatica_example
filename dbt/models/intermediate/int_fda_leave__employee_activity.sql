select
    md5(employee_id || '|' || pay_period_key || '|' || sequence_number::varchar) as fda_leave_activity_key,
    fda_batch_id,
    ticket_number,
    employee_id,
    pay_period_key,
    record_type,
    sequence_number,
    leave_transaction_payload
from {{ ref('stg_fda_leave__transactions') }}
