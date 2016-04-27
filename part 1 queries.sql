--All PL/SQL Code used in Apex App by page

-- Project
select "PROJECT_ID", 
"MANAGER",
"PROJECT_TITLE",
"DEPT_NO",
"PROJECT_ACTIVE",
"END_DATE_MONTH",
"END_DATE_DAY",
"END_DATE_YEAR",
"EST_PERSON_HOURS",
"PARENT_PROJECT",
"TYPE",
"CREATED",
"CREATED_BY",
"ROW_VERSION_NUMBER",
"UPDATED",
"UPDATED_BY"
from "#OWNER#"."PROJECT";
  
-- Person_Projectselect 
"PERSON_PROJECT_ID", 
"PERSON_ID",
"PROJECT_ID",
"CREATED",
"CREATED_BY",
"ROW_VERSION_NUMBER",
"UPDATED",
"UPDATED_BY"
from "#OWNER#"."PERSON_PROJECT" ;
  
-- Manager Home
Select * from person where manager = :p0_userid;
Select * from current_project_view where manager = :p0_userid;
Select * from project_employee_view join person_project using (person_id) where project_id = :P6_SELECTPROJECT ;
select project_title as d,
       project_id as r
  from project
where manager = :p0_userid AND type = 'Current_Project' AND project_active = 1
 order by 1;
Select first_name || ' ' || last_name as d, person_id as r from project_employee_view where :p6_selectproject is not NULL and manager = :p0_userid and person_id not in  (select person_id from person_project where project_id= :p6_selectproject );
insert into Person_Project( 
		person_id,
		project_id
		)
		 VALUES (
              :P6_SELECTEMPLOYEE ,
              :P6_SELECTPROJECT
		) ;

Select * from proposed_project_view where manager = :p0_userid;
Select * from rejected_project_view where manager = :p0_userid;

-- Employee
select "PERSON_ID", 
"FIRST_NAME",
"LAST_NAME",
"HOME_ADDRESS",
"ZIPCODE",
"HOME_PHONE",
"US_CITIZEN",
"SPOUSE",
"SALARY",
"SALARY_EXCEPTION",
"MANAGER"
from "#OWNER#"."EMPLOYEE_VIEW" ;
  
-- Interim Manager Home
Select * from person where manager = :p0_userid;
select p."PROJECT_ID", 
"MANAGER",
"PROJECT_TITLE",
"DEPT_NO",
"PROJECT_ACTIVE",
"END_DATE_MONTH",
"END_DATE_DAY",
"END_DATE_YEAR",
"EST_PERSON_HOURS",
"PARENT_PROJECT",
"TYPE",
p."CREATED",
p."CREATED_BY",
p."ROW_VERSION_NUMBER",
p."UPDATED",
p."UPDATED_BY",
 person_project_id
from "#OWNER#"."PROJECT" p left join person_project pp on (p.project_id=pp.project_id and pp.person_id= :p0_userid) where manager = :p0_userid  OR
p.project_id IN (select project_id from person_project where person_id = :p0_userid);
Select * from project_employee_view join person_project using (person_id) where project_id = :P10_SELECTPROJECT;
Select project_title as d, project_id as r from current_project_view where manager = :p0_userid order by 1;
Select first_name || ' ' || last_name as d, person_id as r from project_employee_view where :p10_selectproject is not NULL and manager = :p0_userid and person_id not in  (select person_id from person_project where project_id= :p10_selectproject );

-- President Home
Select * from person;
Select * from proposed_project_view;
Select * from current_project_view;
Select * from project_employee_view join person_project using (person_id) where project_id = :P12_SELECTPROJECT ;
Select first_name || ' ' || last_name as d, person_id as r from project_employee_view where :p12_selectproject is not NULL and person_id not in  (select person_id from person_project where project_id= :p12_selectproject );
Select * from rejected_project_view;

-- Employee Home
Select * from person where person_id= :p0_userid;
select * from manager_view where person_id = (select manager from person where person_id = :p0_userid);
select * from current_project_view 
where project_id = :p13_project;
Select * from project_employee_view
where person_id IN (select person_id from person_project where project_id = :p13_project);

-- Person
select "PERSON_ID", 
"FIRST_NAME",
"LAST_NAME",
"HOME_ADDRESS",
"ZIPCODE",
"HOME_PHONE",
"US_CITIZEN",
"SPOUSE",
"EMPLOYEE_ID",
"SALARY",
"SALARY_EXCEPTION",
"ISFIRED",
"MANAGER",
"TYPE",
"BONUS",
"DEPT_NO",
"CREATED",
"CREATED_BY",
"ROW_VERSION_NUMBER",
"UPDATED",
"UPDATED_BY"
from "#OWNER#"."PERSON" ;

-- Manager
select "PERSON_ID", 
"FIRST_NAME",
"LAST_NAME",
"HOME_ADDRESS",
"ZIPCODE",
"HOME_PHONE",
"US_CITIZEN",
"SPOUSE",
"EMPLOYEE_ID",
"SALARY",
"SALARY_EXCEPTION",
"MANAGER",
"BONUS",
"DEPT_NO",
"TYPE"
from "#OWNER#"."MANAGER_VIEW" ;

-- Department
select "DEPT_NO", 
"DEPT_NAME",
"CREATED",
"CREATED_BY",
"ROW_VERSION_NUMBER",
"UPDATED",
"UPDATED_BY"
from "#OWNER#"."DEPARTMENT" ;

-- Project Employees
select *
from "#OWNER#"."PROJECT_EMPLOYEE_VIEW" ;




-- Shared Component Lists
-- Current Projects
select project_title as d,
       project_id as r
  from current_project_view
 order by 1;

 -- Departments
 select dept_name as d,
       dept_no as r
  from department
 order by 1;

-- Employees
select first_name || ' ' || last_name as d,
       person_id as r
  from person where type = 'Employee'
 order by 1;

 -- Login List
 select first_name || ' ' || last_name as d,
       person_id as r
  from person
where type = :p31_username
 order by 1;

 -- Managers
 select first_name || ' ' || last_name as d,
       person_id as r
  from person where type = 'Manager' OR type = 'Interim_Manager'
 order by 1;

 -- Person
 select first_name || ' ' || last_name as d,
       person_id as r
  from person
 order by 1;

 -- Person_Projects
 select project_title as d,
       project_id as r
  from project
where project_id IN (select project_id from person_project where person_id = :p0_userid)
 order by 1;

 -- Presidents
 select first_name || ' ' || last_name as d,
       person_id as r
  from person where type = 'President'
 order by 1;

 -- Projects
 select project_title as d,
       project_id as r
  from project
 order by 1;

 -- Proposed_Projects
 select project_title as d,
       project_id as r
  from project
  where type = 'Proposed_Project'
 order by 1;

 -- Rejected_Projects
 select project_title as d,
       project_id as r
  from project
  where type = 'Rejected_Project'
 order by 1;



