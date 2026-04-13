select * from {{ source('mock_informatica', 'src_pseudossn_from_sda_tbl') }}
