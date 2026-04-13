select * from {{ source('mock_informatica', 'src_les_emp_detail_leave_tbl') }}
