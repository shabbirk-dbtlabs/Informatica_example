select
    ssn as employee_ssn,
    can_cd as can_code,
    pseudossn as employee_pseudossn,
    emplid as employee_id,
    empl_rcd::number(4,0) as employee_record_number,
    appt_num as appointment_number,
    emp_first_name as employee_first_name,
    emp_last_name as employee_last_name,
    hire_date::date as hire_date,
    pay_basis_cd as pay_basis_code,
    occupation_cd as occupation_code,
    duty_station
from {{ ref('raw_pseudossn__crosswalk') }}
