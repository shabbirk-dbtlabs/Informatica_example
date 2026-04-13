select * from {{ source('mock_informatica', 'src_cpm_oig_tbl') }}
