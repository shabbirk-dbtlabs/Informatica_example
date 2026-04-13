select
    j.job_action_key,
    j.employee_id,
    j.employee_record_number,
    j.effective_date,
    j.effective_sequence,
    j.department_id,
    j.job_code,
    j.position_number,
    j.employee_status,
    j.action_code,
    j.action_date,
    j.action_reason_code,
    j.company,
    j.paygroup
from {{ ref('int_ehrp2biis_update__job_actions') }} j
