Select j0.project_no,
j1.project_title
from apex_collections c,
json_table(c.clob001, '$.project_no[*]' COLUMNS rid for ordinality, project_no varchar2(30) path '$') j0 ,
json_table(c.clob001, '$.project_title[*]' COLUMNS rid for ordinality, project_title varchar2(30) path '$') j1 
where c.collection_name='P14_REST_RESULTS'  and 
 j0.rid=j0.rid and 
 j0.rid=j1.rid
