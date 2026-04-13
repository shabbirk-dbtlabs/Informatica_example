select * from {{ source('mock_informatica', 'src_comptime_daily_tbl') }}
