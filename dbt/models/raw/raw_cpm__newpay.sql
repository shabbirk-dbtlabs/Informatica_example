select * from {{ source('mock_informatica', 'src_cpm_newpay_tbl') }}
