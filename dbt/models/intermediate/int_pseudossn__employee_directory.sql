select
    employee_pseudossn,
    employee_ssn,
    employee_id,
    employee_record_number,
    employee_first_name,
    employee_last_name,
    employee_first_name || ' ' || employee_last_name as employee_full_name,
    hire_date,
    pay_basis_code,
    occupation_code,
    duty_station
from {{ ref('stg_pseudossn__employees') }}
