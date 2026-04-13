select * from {{ source('mock_informatica', 'src_cpm_nih_tbl') }}
