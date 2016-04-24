connOracleNoSQL = connectTo 'OracleNoSQL' 'WDBF3' 'localhost:8051''native_mode' 'A0'
SIM on connOracleNoSQL 'CLASS sim_dept ( DEPT_ID:INTEGER, REQUIRED ; NAME:STRING ; LOCATION :STRING; employees : sim_project_emp, MV(DISTINCT), INVERSE IS department ; projects: sim_project, MV(DISTINCT), INVERSE IS department ; manager : sim_manager, INVERSE IS department ;);'
SIM on connOracleNoSQL 'INSERT sim_dept (DEPT_ID :=69, NAME := "ENGINEERING", LOCATION := "AUSTIN");'
SIM on connOracleNoSQL 'from sim_dept retrieve *;'

cd ~/Carnot
export INSTALLATION_ROOT="."
pkill -9 java
rm -rf WDB*
dist/bin/jython thesis.carnot.sim
setsid dist/bin/jython CarnotRE/restful_start.py >setsid.out
tail -f setsid.out 


cd ~/Carnot
export INSTALLATION_ROOT="."
pkill -9 java
setsid dist/bin/jython CarnotRE/restful_start.py >setsid.out
tail -f setsid.out 


curl --header "DB: OracleNoSQL" --header "USER: WDBF3" --header "PASS: localhost:8051" --header "MODE: native_mode" --header "MODEL: F3" --header "returnDimensions: False" --header "returnFor:  SIM_JSON" -i "http://aevum.cs.utexas.edu:8050/rest/native/?query=from+Person+retrieve+%2A%3B" -v -i



select 
jt1.HOUSE_NAME HOUSE_NAME,
jt2.SEAT SEAT,
jt3.WORDS WORDS,
jt4.REGION REGION
from apex_collections t,
json_table(t.clob001, '$.HOUSE_NAME[*]' COLUMNS rid for ordinality, HOUSE_NAME varchar2(30) path '$') jt1,
json_table(t.clob001, '$.SEAT[*]' COLUMNS rid for ordinality, SEAT varchar2(30) path '$') jt2,
json_table(t.clob001, '$.WORDS[*]' COLUMNS rid for ordinality, WORDS varchar2(30) path '$') jt3,
json_table(t.clob001, '$.REGION[*]' COLUMNS rid for ordinality, REGION varchar2(30) path '$') jt4
where t.collection_name = 'P11_DOREST_RESULTS' and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid

select j0.PERSON_ID, 
j1.FIRST_NAME,
j2.LAST_NAME,
j3.HOME_ADDRESS,
j4.ZIPCODE,
j5.HOME_PHONE,
j6.US_CITIZEN
from apex_collections c,
json_table(c.clob001, '$.person_id[*]' COLUMNS rid for ordinality, person_id varchar2(30) path '$') j0,
json_table(c.clob001, '$.first_name[*]' COLUMNS rid for ordinality, first_name varchar2(30) path '$') j1,
json_table(c.clob001, '$.last_name[*]' COLUMNS rid for ordinality, last_name varchar2(30) path '$') j2,
json_table(c.clob001, '$.home_address[*]' COLUMNS rid for ordinality, home_address varchar2(30) path '$') j3,
json_table(c.clob001, '$.zipcode[*]' COLUMNS rid for ordinality, zipcode varchar2(30) path '$') j4,
json_table(c.clob001, '$.home_phone[*]' COLUMNS rid for ordinality, home_phone varchar2(30) path '$') j5,
json_table(c.clob001, '$.us_citizen[*]' COLUMNS rid for ordinality, us_citizen varchar2(30) path '$') j6
where c.collection_name='P16_REST_RESULTS' and
j0.rid=j1.rid and j1.rid = j2.rid and j2.rid = j3.rid and j3.rid = j4.rid and j1.rid = j5.rid and j2.rid = j6.rid


select * from person;