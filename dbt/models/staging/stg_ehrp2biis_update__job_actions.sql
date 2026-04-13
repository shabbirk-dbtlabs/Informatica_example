select
    emplid as employee_id,
    empl_rcd::number(4,0) as employee_record_number,
    effdt::date as effective_date,
    effseq::number(6,0) as effective_sequence,
    deptid as department_id,
    jobcode as job_code,
    position_nbr as position_number,
    empl_status as employee_status,
    action as action_code,
    action_dt::date as action_date,
    action_reason as action_reason_code,
    company,
    paygroup
from {{ ref('raw_ehrp2biis_update__job_actions') }}
