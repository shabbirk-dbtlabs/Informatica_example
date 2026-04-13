select
    md5(employee_id || '|' || employee_record_number::varchar || '|' || to_varchar(effective_date) || '|' || effective_sequence::varchar) as job_action_key,
    employee_id,
    employee_record_number,
    effective_date,
    effective_sequence,
    department_id,
    job_code,
    position_number,
    employee_status,
    action_code,
    action_date,
    action_reason_code,
    company,
    paygroup
from {{ ref('stg_ehrp2biis_update__job_actions') }}
