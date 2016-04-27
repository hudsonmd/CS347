Select j0.dept_no,
j1.dept_name
from apex_collections c,
json_table(c.clob001, '$.dept_no[*]' COLUMNS rid for ordinality, dept_no varchar2(30) path '$') j0 ,
json_table(c.clob001, '$.dept_name[*]' COLUMNS rid for ordinality, dept_name varchar2(30) path '$') j1 
where c.collection_name='P9_REST_RESULTS'  and 
 j0.rid=j0.rid and 
 j0.rid=j1.rid
