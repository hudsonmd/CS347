Select j0.project_id,
j1.project_title,
j2.end_date_month,
j3.end_date_day,
j4.end_date_year,
j5.est_person_hours
from apex_collections c,
json_table(c.clob001, '$.project_id[*]' COLUMNS rid for ordinality, project_id varchar2(30) path '$') j0 ,
json_table(c.clob001, '$.project_title[*]' COLUMNS rid for ordinality, project_title varchar2(30) path '$') j1 ,
json_table(c.clob001, '$.end_date_month[*]' COLUMNS rid for ordinality, end_date_month varchar2(30) path '$') j2 ,
json_table(c.clob001, '$.end_date_day[*]' COLUMNS rid for ordinality, end_date_day varchar2(30) path '$') j3 ,
json_table(c.clob001, '$.end_date_year[*]' COLUMNS rid for ordinality, end_date_year varchar2(30) path '$') j4 ,
json_table(c.clob001, '$.est_person_hours[*]' COLUMNS rid for ordinality, est_person_hours varchar2(30) path '$') j5 
where c.collection_name='P16_REST_RESULTS'  and 
 j0.rid=j0.rid and 
 j0.rid=j1.rid and 
 j0.rid=j2.rid and 
 j0.rid=j3.rid and 
 j0.rid=j4.rid and 
 j0.rid=j5.rid
