select * from {{ source('mock_informatica', 'src_cpm_cdc_tbl') }}
