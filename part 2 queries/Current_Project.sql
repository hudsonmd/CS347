Select j0.project_no,
j1.project_title,
j2.project_active
from apex_collections c,
json_table(c.clob001, '$.project_no[*]' COLUMNS rid for ordinality, project_no varchar2(30) path '$') j0 ,
json_table(c.clob001, '$.project_title[*]' COLUMNS rid for ordinality, project_title varchar2(30) path '$') j1 ,
json_table(c.clob001, '$.project_active[*]' COLUMNS rid for ordinality, project_active varchar2(30) path '$') j2 
where c.collection_name='P15_REST_RESULTS'  and 
 j0.rid=j0.rid and 
 j0.rid=j1.rid and 
 j0.rid=j2.rid
