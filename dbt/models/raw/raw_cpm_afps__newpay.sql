select * from {{ source('mock_informatica', 'src_cpm_afps_tbl') }}
