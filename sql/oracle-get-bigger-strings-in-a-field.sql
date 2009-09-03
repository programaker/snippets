select 
    varchar_field, length(varchar_field) 
from 
    table_name 
where
    length(varchar_field) in (
        select max(length(varchar_field)) from table_name
    )
