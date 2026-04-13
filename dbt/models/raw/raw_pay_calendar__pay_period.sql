select * from {{ source('mock_informatica', 'src_pay_period') }}
