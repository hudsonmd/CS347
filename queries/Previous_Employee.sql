Select j0.person_id,
j1.first_name,
j2.last_name,
j3.home_address,
j4.zipcode,
j5.home_phone,
j6.us_citizen,
j7.isFired,
j8.salary
from apex_collections c,
json_table(c.clob001, '$.person_id[*]' COLUMNS rid for ordinality, person_id varchar2(30) path '$') j0 ,
json_table(c.clob001, '$.first_name[*]' COLUMNS rid for ordinality, first_name varchar2(30) path '$') j1 ,
json_table(c.clob001, '$.last_name[*]' COLUMNS rid for ordinality, last_name varchar2(30) path '$') j2 ,
json_table(c.clob001, '$.home_address[*]' COLUMNS rid for ordinality, home_address varchar2(30) path '$') j3 ,
json_table(c.clob001, '$.zipcode[*]' COLUMNS rid for ordinality, zipcode varchar2(30) path '$') j4 ,
json_table(c.clob001, '$.home_phone[*]' COLUMNS rid for ordinality, home_phone varchar2(30) path '$') j5 ,
json_table(c.clob001, '$.us_citizen[*]' COLUMNS rid for ordinality, us_citizen varchar2(30) path '$') j6 ,
json_table(c.clob001, '$.isFired[*]' COLUMNS rid for ordinality, isFired varchar2(30) path '$') j7 ,
json_table(c.clob001, '$.salary[*]' COLUMNS rid for ordinality, salary varchar2(30) path '$') j8 
where c.collection_name='P16_REST_RESULTS'  and 
 j0.rid=j0.rid and 
 j0.rid=j1.rid and 
 j0.rid=j2.rid and 
 j0.rid=j3.rid and 
 j0.rid=j4.rid and 
 j0.rid=j5.rid and 
 j0.rid=j6.rid and 
 j0.rid=j7.rid and 
 j0.rid=j8.rid
