Select j0.project_id,
j1.project_title
from apex_collections c,
json_table(c.clob001, '$.project_id[*]' COLUMNS rid for ordinality, project_id varchar2(30) path '$') j0 ,
json_table(c.clob001, '$.project_title[*]' COLUMNS rid for ordinality, project_title varchar2(30) path '$') j1 
where c.collection_name='P16_REST_RESULTS'  and 
 j0.rid=j0.rid and 
 j0.rid=j1.rid
