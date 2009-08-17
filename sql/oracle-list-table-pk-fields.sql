select 
    cols.table_name, 
    cols.column_name, 
    cols.position, 
    cons.status, 
    cons.owner
from 
    all_constraints cons inner join all_cons_columns cols on
        cons.constraint_name = cols.constraint_name and
        cons.owner = cols.owner
where 
    cols.table_name = 'TABLE_NAME' and 
    cons.constraint_type = 'P'
order by 
    cols.table_name, 
    cols.position;
