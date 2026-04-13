select * from {{ source('mock_informatica', 'src_ehrp_job_actions_tbl') }}
