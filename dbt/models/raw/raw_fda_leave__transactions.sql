select * from {{ source('mock_informatica', 'src_fda_tatran_tbl') }}
