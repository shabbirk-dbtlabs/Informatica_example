select
    fda_batch_id::number(18,0) as fda_batch_id,
    fda_tk_no as ticket_number,
    fda_emp_id as employee_id,
    (fda_pp_year::varchar || lpad(fda_pp_num::varchar, 2, '0')) as pay_period_key,
    fda_rec_type as record_type,
    fda_seq::number(18,0) as sequence_number,
    fda_data as leave_transaction_payload
from {{ ref('raw_fda_leave__transactions') }}
