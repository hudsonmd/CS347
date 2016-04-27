set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>24746907330140458850
,p_default_application_id=>106725
,p_default_owner=>'MNM2437'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 106725 - MH_MM_Project_Part2
--
-- Application Export:
--   Application:     106725
--   Name:            MH_MM_Project_Part2
--   Date and Time:   17:16 Wednesday April 27, 2016
--   Exported By:     HUDSONMD
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     22
--     Items:                   50
--     Processes:               33
--     Regions:                 37
--     Buttons:                 24
--     Dynamic Actions:         22
--   Shared Components:
--     Logic:
--       Web Services:           1
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--     Security:
--       Authentication:         1
--       Authorization:          3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              14
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               4
--         Report:              11
--       LOVs:                  20
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,106725)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MNM2437')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'MH_MM_Project_Part2')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_97138106725')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'190A01F93AB0E37796DDF413A339457572518AFBF9F5CF40A9571B28E5C4B669'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(60190194805271908478)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:MH_MM_Project'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427064458'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(60190152174722908423)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(60950193608382100673)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manager Home'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'P0_USER'
,p_list_item_disp_condition2=>'Manager'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(61556399609910290988)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employee Home'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'P0_USER'
,p_list_item_disp_condition2=>'Employee'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(61976430452960280629)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Project Employee Home'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'p0_user'
,p_list_item_disp_condition2=>'Project_Employee'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31726708934604928353)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Interim Manager Home'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'P0_USER'
,p_list_item_disp_condition2=>'Interim_Manager'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31729089730997178780)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'President Home'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'P0_USER'
,p_list_item_disp_condition2=>'President'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31401041158675426426)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Rest Form'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(60244087303857649994)
,p_list_item_display_sequence=>165
,p_list_item_link_text=>'Person'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17,18,12,3,4,5,7,8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31681817265146866086)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Interim Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60244087303857649994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31687351125338990502)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60244087303857649994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31690260644611634651)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60244087303857649994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31690960032103649324)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Previous Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60244087303857649994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31693921258959107181)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'President'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60244087303857649994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31694357929847119915)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Project Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(60244087303857649994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31694489087946128259)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Department'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31694921881935768450)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Project'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15,17,18,19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31695114896433804112)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Current Project'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31694921881935768450)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31695213343688813886)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Previous Project'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31694921881935768450)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31695923052225909888)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Proposed Project'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31694921881935768450)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31697220300500469274)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Rejected Project'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(31694921881935768450)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(60190194502387908476)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(60190194706033908477)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(60190151849474908423)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(60190151980473908423)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(60190152085880908423)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(61196357953785091475)
,p_name=>'access control - administrator'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_setup_id number;',
'  l_mode     varchar2(50);',
'  l_priv     varchar2(50);',
'begin',
'  if apex_application.is_custom_auth_page then',
'    return true;',
'  end if;',
'  ',
'  for c1 in (select id, application_mode',
'             from apex_access_setup ',
'             where application_id = :app_id)',
'  loop',
'    l_setup_id := c1.id;',
'    l_mode := c1.application_mode;',
'  end loop;',
'  ',
'  if (l_mode = ''ALL'') or (l_mode is null) then',
'    return true;',
'  end if;',
'   ',
'  for c1 in (select admin_privileges ',
'             from apex_access_control',
'             where upper(admin_username) = upper(:app_user)',
'             and setup_id = l_setup_id)',
'  loop',
'    l_priv := c1.admin_privileges;',
'  end loop;',
'  ',
'  if nvl(l_priv,''x'') = ''ADMIN'' then return true; end if;',
'  return false;',
'end;'))
,p_error_message=>'No privilege for attempted action.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(61196358305911091476)
,p_name=>'access control - edit'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_setup_id number;',
'  l_mode     varchar2(50);',
'  l_priv     varchar2(50);',
'begin',
'  if apex_application.is_custom_auth_page then',
'    return true;',
'  end if;',
'  ',
'  for c1 in (select id, application_mode',
'             from apex_access_setup',
'             where application_id = :app_id)',
'  loop',
'     l_setup_id := c1.id;',
'     l_mode := c1.application_mode;',
'  end loop;',
'  ',
'  if (l_mode = ''ALL'') or (l_mode is null) then',
'    return true;',
'  end if;',
'  ',
'  for c1 in (select admin_privileges',
'             from apex_access_control',
'             where upper(admin_username) = upper(:app_user)',
'             and setup_id = l_setup_id)',
'  loop',
'     l_priv := c1.admin_privileges;',
'  end loop;',
'  ',
'  if l_mode in (''RESTRICTED'',''PUBLIC_RESTRICTED'') then',
'    if l_priv in (''EDIT'',''ADMIN'') then',
'      return true;',
'    else',
'      return false;',
'    end if; ',
'  elsif l_mode =''ADMIN_ONLY'' then',
'    if l_priv = ''ADMIN'' then',
'      return true;',
'    else',
'      return false;',
'    end if; ',
'  else',
'    return false;',
'  end if;',
'  return false;',
'end;'))
,p_error_message=>'No privilege for attempted action.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(61196358569689091477)
,p_name=>'access control - view'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_setup_id number;',
'  l_mode     varchar2(50);',
'  l_priv     varchar2(50);',
'begin ',
'  if apex_application.is_custom_auth_page then',
'    return true;',
'  end if;',
'  ',
'  for c1 in (select id, application_mode',
'             from apex_access_setup',
'             where application_id = :app_id)',
'  loop',
'   l_setup_id := c1.id;',
'   l_mode := c1.application_mode;',
'  end loop;',
'  ',
'  if (l_mode = ''ALL'') or (l_mode is null) then ',
'    return true;',
'  end if; ',
'  ',
'  for c1 in (select admin_privileges',
'             from apex_access_control',
'             where upper(admin_username) = upper(:app_user)',
'             and setup_id = l_setup_id)',
'  loop',
'    l_priv := c1.admin_privileges;',
'  end loop;',
'  ',
'  if l_mode = ''RESTRICTED'' then ',
'    if l_priv in (''VIEW'',''ADMIN'',''EDIT'') then ',
'      return true;',
'    else ',
'      return false;',
'    end if;',
'  elsif l_mode = ''ADMIN_ONLY'' then ',
'    if l_priv = ''ADMIN'' then ',
'      return true;',
'    else ',
'      return false;',
'    end if;',
'  elsif l_mode = ''PUBLIC_RESTRICTED'' then ',
'    return true;',
'  else',
'    return false;',
'  end if;',
'  return false;',
'end;'))
,p_error_message=>'No privilege for attempted action.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(61196342506211091452)
,p_lov_name=>'APEX_APPLICATION_MODE'
,p_lov_query=>'.'||wwv_flow_api.id(61196342506211091452)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(61196342829247091453)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Full access to all, access control list not used.'
,p_lov_return_value=>'ALL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(61196343251116091454)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Restricted access. Only users defined in the access control list are allowed.'
,p_lov_return_value=>'RESTRICTED'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(61196343623664091455)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Public read only. Edit and administrative privileges controlled by access control list.'
,p_lov_return_value=>'PUBLIC_RESTRICTED'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(61196344058489091455)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Administrative access only.'
,p_lov_return_value=>'ADMIN_ONLY'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(61196347581390091462)
,p_lov_name=>'APEX_APPLICATION_PRIV'
,p_lov_query=>'.'||wwv_flow_api.id(61196347581390091462)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(61196347969915091462)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Administrator'
,p_lov_return_value=>'ADMIN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(61196348393736091462)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Edit'
,p_lov_return_value=>'EDIT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(61196348801722091463)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'View'
,p_lov_return_value=>'VIEW'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(62369493322556116951)
,p_lov_name=>'BOOLSTOENGLISH'
,p_lov_query=>'.'||wwv_flow_api.id(62369493322556116951)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(62369493688270116952)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(62369494028534116953)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31721238296906077297)
,p_lov_name=>'BOOLSTOENGLISH1'
,p_lov_query=>'.'||wwv_flow_api.id(31721238296906077297)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31721238677678077298)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31721239087019077299)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31721240294277077301)
,p_lov_name=>'CURRENT_PROJECTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select project_title as d,',
'       project_id as r',
'  from current_project_view',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(60245091978415183649)
,p_lov_name=>'DEPARTMENTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select dept_name as d,',
'       dept_no as r',
'  from department',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31721237659485077297)
,p_lov_name=>'DEPARTMENTS1'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select dept_name as d,',
'       dept_no as r',
'  from department',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(61350952778795202004)
,p_lov_name=>'EMPLOYEES'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person where type = ''Employee''',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(61972986450242925718)
,p_lov_name=>'LOGIN LIST'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person',
'where type = :p31_username',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31717518023757825634)
,p_lov_name=>'LOGIN LIST1'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person',
'where type = :p31_username',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31717921680041214279)
,p_lov_name=>'LOGIN LIST2'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person',
'where type = :p31_username',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(60245098946725198146)
,p_lov_name=>'MANAGERS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person where type = ''Manager'' OR type = ''Interim_Manager''',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31721237910920077297)
,p_lov_name=>'MANAGERS1'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person where type = ''Manager'' OR type = ''Interim_Manager''',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(62424978385346999019)
,p_lov_name=>'PERSON'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31721239304271077300)
,p_lov_name=>'PERSON1'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(61977178885303946161)
,p_lov_name=>'PERSON_PROJECTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select project_title as d,',
'       project_id as r',
'  from project',
'where project_id = (select project_id from person_project where person_id = :p0_userid)',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(61350892099740568601)
,p_lov_name=>'PRESIDENTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select first_name || '' '' || last_name as d,',
'       person_id as r',
'  from person where type = ''President''',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(60239583543967550322)
,p_lov_name=>'PROJECTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select project_title as d,',
'       project_id as r',
'  from project',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31721237361832077295)
,p_lov_name=>'PROJECTS1'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select project_title as d,',
'       project_id as r',
'  from project',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31721239698673077300)
,p_lov_name=>'PROPOSED_PROJECTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select project_title as d,',
'       project_id as r',
'  from project',
'  where type = ''Proposed_Project''',
' order by 1'))
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(60190194857144908478)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190152248030908423)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190152416016908425)
,p_page_template_id=>wwv_flow_api.id(60190152248030908423)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190152520588908426)
,p_page_template_id=>wwv_flow_api.id(60190152248030908423)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190152542868908426)
,p_page_template_id=>wwv_flow_api.id(60190152248030908423)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190152628000908426)
,p_page_template_id=>wwv_flow_api.id(60190152248030908423)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190152794765908426)
,p_page_template_id=>wwv_flow_api.id(60190152248030908423)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190152869325908426)
,p_page_template_id=>wwv_flow_api.id(60190152248030908423)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190152970781908426)
,p_page_template_id=>wwv_flow_api.id(60190152248030908423)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153058804908426)
,p_page_template_id=>wwv_flow_api.id(60190152248030908423)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190153128263908426)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153281291908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153359016908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153441820908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153555523908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153627968908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153774400908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153854570908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190153929245908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190154045320908427)
,p_page_template_id=>wwv_flow_api.id(60190153128263908426)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190154188584908427)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190154302988908427)
,p_page_template_id=>wwv_flow_api.id(60190154188584908427)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190154357470908427)
,p_page_template_id=>wwv_flow_api.id(60190154188584908427)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190154454572908427)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190154612752908428)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190154648254908428)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190154724872908428)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190154882032908428)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190154961359908428)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155076549908428)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155139256908428)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155286882908429)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155365410908429)
,p_page_template_id=>wwv_flow_api.id(60190154454572908427)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190155506381908429)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155576974908429)
,p_page_template_id=>wwv_flow_api.id(60190155506381908429)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155663507908429)
,p_page_template_id=>wwv_flow_api.id(60190155506381908429)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155729443908429)
,p_page_template_id=>wwv_flow_api.id(60190155506381908429)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155828711908429)
,p_page_template_id=>wwv_flow_api.id(60190155506381908429)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190155991082908429)
,p_page_template_id=>wwv_flow_api.id(60190155506381908429)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190156088731908429)
,p_page_template_id=>wwv_flow_api.id(60190155506381908429)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190156124052908429)
,p_page_template_id=>wwv_flow_api.id(60190155506381908429)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190156262827908430)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190156345092908430)
,p_page_template_id=>wwv_flow_api.id(60190156262827908430)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190156452755908430)
,p_page_template_id=>wwv_flow_api.id(60190156262827908430)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190156534987908430)
,p_page_template_id=>wwv_flow_api.id(60190156262827908430)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190156718193908430)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190156721437908430)
,p_page_template_id=>wwv_flow_api.id(60190156718193908430)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190156917666908430)
,p_page_template_id=>wwv_flow_api.id(60190156718193908430)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157003833908430)
,p_page_template_id=>wwv_flow_api.id(60190156718193908430)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157034645908430)
,p_page_template_id=>wwv_flow_api.id(60190156718193908430)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157160676908430)
,p_page_template_id=>wwv_flow_api.id(60190156718193908430)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157228949908430)
,p_page_template_id=>wwv_flow_api.id(60190156718193908430)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157355406908430)
,p_page_template_id=>wwv_flow_api.id(60190156718193908430)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157447270908430)
,p_page_template_id=>wwv_flow_api.id(60190156718193908430)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190157527286908431)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157669665908431)
,p_page_template_id=>wwv_flow_api.id(60190157527286908431)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157738350908432)
,p_page_template_id=>wwv_flow_api.id(60190157527286908431)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157872035908432)
,p_page_template_id=>wwv_flow_api.id(60190157527286908431)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190157982348908432)
,p_page_template_id=>wwv_flow_api.id(60190157527286908431)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190158052335908432)
,p_page_template_id=>wwv_flow_api.id(60190157527286908431)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190158170197908432)
,p_page_template_id=>wwv_flow_api.id(60190157527286908431)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190158316922908432)
,p_page_template_id=>wwv_flow_api.id(60190157527286908431)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60190158382509908432)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190158432407908433)
,p_page_template_id=>wwv_flow_api.id(60190158382509908432)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190158590400908433)
,p_page_template_id=>wwv_flow_api.id(60190158382509908432)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190158634724908433)
,p_page_template_id=>wwv_flow_api.id(60190158382509908432)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(60190189282423908466)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(60190189343181908467)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(60190189481491908467)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(61196352683609091467)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190158783643908433)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190158893991908434)
,p_plug_template_id=>wwv_flow_api.id(60190158783643908433)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190160264026908436)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190160339533908437)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190160517849908437)
,p_plug_template_id=>wwv_flow_api.id(60190160339533908437)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190160550963908437)
,p_plug_template_id=>wwv_flow_api.id(60190160339533908437)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190161257747908437)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190161414061908438)
,p_plug_template_id=>wwv_flow_api.id(60190161257747908437)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190161485672908438)
,p_plug_template_id=>wwv_flow_api.id(60190161257747908437)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190164648097908440)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190164774801908440)
,p_plug_template_id=>wwv_flow_api.id(60190164648097908440)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190164879114908440)
,p_plug_template_id=>wwv_flow_api.id(60190164648097908440)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190166764512908441)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190166896601908441)
,p_plug_template_id=>wwv_flow_api.id(60190166764512908441)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190166957583908441)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190167038596908441)
,p_plug_template_id=>wwv_flow_api.id(60190166957583908441)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190167902270908442)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190168176291908442)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190168230746908442)
,p_plug_template_id=>wwv_flow_api.id(60190168176291908442)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190168362714908442)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190168514642908443)
,p_plug_template_id=>wwv_flow_api.id(60190168362714908442)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190168617699908443)
,p_plug_template_id=>wwv_flow_api.id(60190168362714908442)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190170482361908445)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190170610044908445)
,p_plug_template_id=>wwv_flow_api.id(60190170482361908445)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190170626685908445)
,p_plug_template_id=>wwv_flow_api.id(60190170482361908445)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190171643562908446)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60190172176169908446)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(60190172310650908446)
,p_plug_template_id=>wwv_flow_api.id(60190172176169908446)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(62377432960554106614)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Highlight'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(62377433329013106615)
,p_plug_template_id=>wwv_flow_api.id(62377432960554106614)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(62377433909475106616)
,p_plug_template_id=>wwv_flow_api.id(62377432960554106614)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190180581198908455)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190182279166908456)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190184321295908461)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190185160272908462)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190186107562908463)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190186538717908463)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190186714255908463)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190186817958908463)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190186884935908464)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190187737891908464)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60190188310744908465)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190172748741908447)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190172874773908447)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190174533484908449)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190176682678908451)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190177107048908451)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190177178696908452)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(60190177178696908452)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190178427782908453)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190178624965908453)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(60190179714390908454)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(62377497246929118995)
,p_row_template_name=>'High_cur_proj'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_condition1=>':person_project_id is null'
,p_row_template2=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" style="background-color: yellow;">#COLUMN_VALUE#</td>'
,p_row_template_condition2=>':person_project_id is not null'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(62377497246929118995)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(62382654758865342093)
,p_row_template_name=>'Copy of High_cur_proj'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_condition1=>':person_project_id is null'
,p_row_template2=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" style="background-color: yellow;">#COLUMN_VALUE#</td>'
,p_row_template_condition2=>':person_project_id is not null'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(62382654758865342093)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(60190188802854908465)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(60190188870607908466)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(60190189006272908466)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(60190189028026908466)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(60190189140543908466)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(60190189873110908468)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(60190190086054908469)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(60190189932072908468)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(60190190504731908472)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(60190157527286908431)
,p_default_dialog_template=>wwv_flow_api.id(60190156262827908430)
,p_error_template=>wwv_flow_api.id(60190154188584908427)
,p_printer_friendly_template=>wwv_flow_api.id(60190157527286908431)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(60190154188584908427)
,p_default_button_template=>wwv_flow_api.id(60190189343181908467)
,p_default_region_template=>wwv_flow_api.id(60190168362714908442)
,p_default_chart_template=>wwv_flow_api.id(60190168362714908442)
,p_default_form_template=>wwv_flow_api.id(60190168362714908442)
,p_default_reportr_template=>wwv_flow_api.id(60190168362714908442)
,p_default_tabform_template=>wwv_flow_api.id(60190168362714908442)
,p_default_wizard_template=>wwv_flow_api.id(60190168362714908442)
,p_default_menur_template=>wwv_flow_api.id(60190171643562908446)
,p_default_listr_template=>wwv_flow_api.id(60190168362714908442)
,p_default_irr_template=>wwv_flow_api.id(60190167902270908442)
,p_default_report_template=>wwv_flow_api.id(60190177178696908452)
,p_default_label_template=>wwv_flow_api.id(60190188870607908466)
,p_default_menu_template=>wwv_flow_api.id(60190189873110908468)
,p_default_calendar_template=>wwv_flow_api.id(60190189932072908468)
,p_default_list_template=>wwv_flow_api.id(60190184321295908461)
,p_default_nav_list_template=>wwv_flow_api.id(60190187737891908464)
,p_default_top_nav_list_temp=>wwv_flow_api.id(60190187737891908464)
,p_default_side_nav_list_temp=>wwv_flow_api.id(60190186817958908463)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(60190160339533908437)
,p_default_dialogr_template=>wwv_flow_api.id(60190160264026908436)
,p_default_option_label=>wwv_flow_api.id(60190188870607908466)
,p_default_required_label=>wwv_flow_api.id(60190189028026908466)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(60190186714255908463)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(60190190163208908470)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(60190190311326908470)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(60190190347351908470)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190159069845908435)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190159251598908436)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190159505000908436)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190160643942908437)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190160898261908437)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190161585042908438)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190161966138908438)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190162615354908439)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190163190357908439)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190163337406908439)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190164249849908440)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190165875503908441)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190167272080908442)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190170743546908445)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190170975640908445)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190171383878908446)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190171815215908446)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190172409086908446)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190172939425908448)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190173164271908448)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190174724910908449)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190175459936908450)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190175798626908450)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190176481607908451)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190176766776908451)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190177308747908452)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190177583646908453)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190177749179908453)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190178796428908454)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190180672995908455)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190181512509908456)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190182506249908456)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190183162619908460)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190183452257908460)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190184219898908460)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190184887308908461)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190187280729908464)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190188330726908465)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190189595956908468)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190190569058908474)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190190769114908474)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190190985027908474)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190191136648908474)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190191389054908474)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190191801054908475)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190192489881908475)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190192845204908475)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190193103167908476)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190193242554908476)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190193494924908476)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190193766256908476)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60190194112057908476)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190158961921908434)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190159185639908435)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(60190159069845908435)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190159342827908436)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(60190159251598908436)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190159537562908436)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(60190159505000908436)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190159688833908436)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(60190159069845908435)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190159801696908436)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(60190159251598908436)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190159874691908436)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(60190159069845908435)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190159992778908436)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(60190159251598908436)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190160038156908436)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(60190159069845908435)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190160122026908436)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190158783643908433)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(60190159505000908436)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190160816491908437)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(60190160339533908437)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190161007879908437)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(60190160339533908437)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(60190160898261908437)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190161053564908437)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(60190160339533908437)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190161164699908437)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(60190160339533908437)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(60190160898261908437)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190161698738908438)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(60190161585042908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190161751079908438)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(60190161585042908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190161876461908438)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(60190161585042908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190162057831908438)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190162196438908438)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190162313581908439)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190162332712908439)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(60190161585042908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190162426032908439)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190162675161908439)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190162721860908439)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190162826671908439)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163011368908439)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163029391908439)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163241546908439)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(60190163190357908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163492118908439)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(60190163337406908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163559189908439)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(60190163190357908439)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163693109908439)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163746302908439)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163883003908439)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190163960524908439)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(60190163337406908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190164100545908439)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190164200105908440)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190164358644908440)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(60190164249849908440)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190164494899908440)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(60190164249849908440)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190164594307908440)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190161257747908437)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190164945562908440)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165109620908440)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165212533908440)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165276564908440)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165353665908440)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165515962908440)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165593524908440)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165655064908440)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165746537908440)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190165948383908441)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(60190165875503908441)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190166022681908441)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(60190165875503908441)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190166128371908441)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(60190163337406908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190166260501908441)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190166409584908441)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190166485814908441)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190166614015908441)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(60190163337406908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190166671005908441)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190164648097908440)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190167194783908442)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190166957583908441)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190167404324908442)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190166957583908441)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(60190167272080908442)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190167479536908442)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190166957583908441)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(60190167272080908442)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190167557173908442)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190166957583908441)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190167659357908442)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190166957583908441)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190167761998908442)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190166957583908441)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(60190167272080908442)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190168013671908442)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190167902270908442)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190168089374908442)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190167902270908442)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190168705112908443)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190168810331908443)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190168835100908443)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190168974520908443)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169119153908443)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169179190908444)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169286190908444)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169377220908444)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169517006908444)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169542730908444)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(60190163190357908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169681768908444)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(60190163337406908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169791821908445)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(60190163190357908439)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169866049908445)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190169986832908445)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190170110993908445)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190170203901908445)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(60190163337406908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190170293293908445)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190170333422908445)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190168362714908442)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190170875539908445)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190170482361908445)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(60190170743546908445)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190171092698908445)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190170482361908445)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(60190170975640908445)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190171155336908445)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190170482361908445)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190171237804908446)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190170482361908445)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(60190170975640908445)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190171498803908446)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190170482361908445)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(60190171383878908446)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190171558035908446)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190170482361908445)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(60190171383878908446)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190171834861908446)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(60190171643562908446)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(60190171815215908446)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190171921993908446)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(60190171643562908446)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190172084886908446)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(60190171643562908446)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(60190171815215908446)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190172495108908446)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(60190172176169908446)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(60190172409086908446)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190172527634908447)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190172176169908446)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(60190172409086908446)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190172652564908447)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(60190172176169908446)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190173098187908448)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(60190172939425908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190173228622908448)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190173359252908448)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(60190172939425908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190173436544908448)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190173605302908448)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(60190172939425908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190173710909908449)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190173726525908449)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190173907842908449)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(60190172939425908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174000144908449)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(60190172939425908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174105485908449)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174218646908449)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174292026908449)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174339136908449)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174469128908449)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190172874773908447)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174636895908449)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174824840908449)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(60190174724910908449)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190174961578908449)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190175059317908449)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(60190174724910908449)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190175162414908449)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190175309247908450)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(60190174724910908449)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190175334905908450)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190175601803908450)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(60190175459936908450)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190175678851908450)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(60190175459936908450)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190175920863908450)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(60190175798626908450)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190175931989908450)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(60190175798626908450)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190176053195908450)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(60190175459936908450)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190176182207908450)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190176282118908451)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(60190174724910908449)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190176371156908451)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190176547938908451)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190174533484908449)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(60190176481607908451)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190176841779908451)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190176682678908451)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(60190176766776908451)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190176975605908451)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190176682678908451)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(60190176766776908451)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190177365585908452)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(60190177308747908452)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190177481115908452)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(60190177308747908452)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190177693006908453)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(60190177583646908453)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190177848103908453)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190177942421908453)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190178087601908453)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190178126225908453)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(60190177583646908453)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190178256219908453)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190178330891908453)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190177178696908452)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190178606418908453)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(60190178427782908453)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(60190175459936908450)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190178861114908454)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(60190178624965908453)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179000138908454)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190178624965908453)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179030658908454)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190178624965908453)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179168801908454)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190178624965908453)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179229018908454)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190178624965908453)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179373113908454)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(60190178624965908453)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179483685908454)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(60190178624965908453)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179603282908454)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(60190178624965908453)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179762788908454)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(60190179714390908454)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190179848353908454)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190179714390908454)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190180000798908454)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190179714390908454)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190180044245908454)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(60190179714390908454)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190180213116908454)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(60190179714390908454)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(60190173164271908448)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190180257962908454)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(60190179714390908454)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190180351444908455)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(60190179714390908454)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190180480948908455)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(60190179714390908454)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(60190178796428908454)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190180759452908455)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190180827549908455)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181009416908455)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181112056908456)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181132336908456)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181318954908456)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181420773908456)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181598980908456)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(60190181512509908456)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181627017908456)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(60190181512509908456)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181771055908456)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181829728908456)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(60190181512509908456)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190181942049908456)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190182067182908456)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(60190181512509908456)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190182159862908456)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(60190180581198908455)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(60190181512509908456)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190182333273908456)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190182564476908456)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(60190182506249908456)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190182655779908457)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190182795591908457)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(60190182506249908456)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190182879890908457)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190182965905908457)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(60190182506249908456)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190183041594908457)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190183280180908460)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(60190183162619908460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190183361803908460)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(60190183162619908460)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190183550493908460)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(60190183452257908460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190183711229908460)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(60190183452257908460)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190183727829908460)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(60190183162619908460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190183903487908460)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190184017337908460)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(60190182506249908456)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190184046199908460)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190184253617908460)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190182279166908456)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(60190184219898908460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190184442509908461)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190184321295908461)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(60190183162619908460)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190184558186908461)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190184321295908461)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190184636416908461)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190184321295908461)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190184810335908461)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190184321295908461)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185013816908462)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190184321295908461)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(60190184887308908461)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185101223908462)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190184321295908461)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(60190184887308908461)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185293622908462)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190185160272908462)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185370565908462)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190185160272908462)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185465549908462)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190185160272908462)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185523454908462)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(60190185160272908462)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185709681908462)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190185160272908462)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185755273908462)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190185160272908462)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185917338908463)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190185160272908462)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190185977852908463)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(60190185160272908462)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190186146787908463)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(60190186107562908463)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190186263140908463)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190186107562908463)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190186354973908463)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190186107562908463)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190186478252908463)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190186107562908463)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190186923800908464)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190186884935908464)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(60190183452257908460)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190187112236908464)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(60190186884935908464)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(60190180672995908455)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190187183882908464)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190186884935908464)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(60190183452257908460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190187379935908464)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190186884935908464)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(60190187280729908464)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190187450431908464)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190186884935908464)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(60190183162619908460)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190187552199908464)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190186884935908464)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(60190183162619908460)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190187642768908464)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(60190186884935908464)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(60190187280729908464)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190187891296908464)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(60190187737891908464)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190187978722908464)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(60190187737891908464)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190188080898908465)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(60190187737891908464)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190188135258908465)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(60190187737891908464)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190188505118908465)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(60190188310744908465)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(60190188330726908465)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190188554300908465)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(60190188310744908465)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(60190188330726908465)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190188686416908465)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(60190188310744908465)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(60190188330726908465)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190189668032908468)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(60190189481491908467)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(60190189595956908468)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190189727477908468)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(60190189481491908467)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(60190189595956908468)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190190661240908474)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(60190190569058908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190190844557908474)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(60190190769114908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190191082984908474)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(60190190985027908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190191292815908474)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(60190191136648908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190191427979908474)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(60190191389054908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190191605103908475)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(60190190769114908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190191707356908475)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(60190190985027908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190191847125908475)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(60190191801054908475)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190191947858908475)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(60190191801054908475)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190192089340908475)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(60190191801054908475)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190192178907908475)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(60190190569058908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190192221003908475)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(60190191389054908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190192333323908475)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(60190191136648908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190192574133908475)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(60190192489881908475)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190192656799908475)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(60190190569058908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190192723657908475)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(60190190569058908474)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190192979092908475)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(60190192845204908475)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190193140109908476)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(60190193103167908476)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190193324718908476)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(60190193242554908476)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190193615992908476)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(60190193494924908476)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190193625164908476)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(60190193494924908476)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190193905705908476)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(60190193766256908476)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190193951123908476)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(60190193103167908476)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190194213819908476)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(60190194112057908476)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190194309371908476)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60190194380084908476)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(60190194112057908476)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377434383959106617)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377434774181106618)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377435149600106618)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377435561020106618)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(60190161966138908438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377435964847106618)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377436342194106619)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377436793912106619)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377437208817106619)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377437543735106620)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(60190162615354908439)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377437930697106620)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(60190163190357908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377438330345106620)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(60190163337406908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377438723043106621)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(60190163190357908439)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377449182226106621)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377449595530106622)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377449969092106622)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377450334973106623)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(60190163337406908439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377450811170106623)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377451178889106623)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(62377432960554106614)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(60190160643942908437)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377497710300118995)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(60190177308747908452)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377498050120118996)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(60190177308747908452)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377498443953118996)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(60190177583646908453)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377498917916118997)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377519234000118997)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377519657396118998)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377520061659118998)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(60190177583646908453)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377520457397118999)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62377520854172118999)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(62377497246929118995)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382655168698342094)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(60190177308747908452)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382655536521342095)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(60190177308747908452)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382655943341342095)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(60190177583646908453)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382656346359342095)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382656782960342095)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382657138597342096)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382657569659342096)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(60190177583646908453)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382657999698342097)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62382658386784342097)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(62382654758865342093)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(60190177749179908453)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(60194590424164237960)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(60190194805271908478)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(60190194549481908476)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:31:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(60190152174722908423)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(60190186817958908463)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(60190194502387908476)
,p_nav_bar_list_template_id=>wwv_flow_api.id(60190186714255908463)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Global Page - Desktop'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427043228'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56447928227429090295)
,p_plug_name=>'Logged in as'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31146938211568165733)
,p_plug_name=>'Rest Settings'
,p_parent_plug_id=>wwv_flow_api.id(56447928227429090295)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31146938488886165735)
,p_name=>'P0_DB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31146938211568165733)
,p_use_cache_before_default=>'NO'
,p_source=>'OracleNoSQL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31146938569697165736)
,p_name=>'P0_USERDB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31146938211568165733)
,p_use_cache_before_default=>'NO'
,p_source=>'WDBF3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31146938624717165737)
,p_name=>'P0_PASS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31146938211568165733)
,p_use_cache_before_default=>'NO'
,p_source=>'localhost:8051'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31146938794168165738)
,p_name=>'P0_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31146938211568165733)
,p_use_cache_before_default=>'NO'
,p_source=>'native_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31146938883333165739)
,p_name=>'P0_MODEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31146938211568165733)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Group'
,p_source=>'F3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31146938937384165740)
,p_name=>'P0_RETURNDIM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31146938211568165733)
,p_use_cache_before_default=>'NO'
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31146939096273165741)
,p_name=>'P0_RETURNFOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31146938211568165733)
,p_use_cache_before_default=>'NO'
,p_source=>'SIM_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56447928412372090296)
,p_name=>'P0_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56447928227429090295)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56447928433764090297)
,p_name=>'P0_USERID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(56447928227429090295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62370218592615138481)
,p_name=>'P0_TEMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(56447928227429090295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Rest'
,p_page_mode=>'MODAL'
,p_step_title=>'Rest'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427044332'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31401041466479426427)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190160264026908436)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31401042032126426430)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190160339533908437)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31401050340171426449)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(60190168362714908442)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P2_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(60190177178696908452)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31401051057034426455)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31401042439837426431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31401042032126426430)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31401042826904426431)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31401043695879426437)
,p_name=>'P2_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31401041466479426427)
,p_prompt=>'Db'
,p_source=>'P0_DB'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31401044475682426439)
,p_name=>'P2_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31401041466479426427)
,p_prompt=>'User'
,p_source=>'P0_USERDB'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31401045277990426440)
,p_name=>'P2_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31401041466479426427)
,p_prompt=>'Pass'
,p_source=>'P0_PASS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31401046051876426443)
,p_name=>'P2_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31401041466479426427)
,p_prompt=>'Mode'
,p_source=>'P0_MODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31401046803128426444)
,p_name=>'P2_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31401041466479426427)
,p_prompt=>'Model '
,p_source=>'P0_MODEL'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31401047640534426445)
,p_name=>'P2_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31401041466479426427)
,p_prompt=>'Returndimensions'
,p_source=>'P0_RETURNDIM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31401048412616426446)
,p_name=>'P2_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31401041466479426427)
,p_prompt=>'Returnfor'
,p_source=>'P0_RETURNFOR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31401049252662426447)
,p_name=>'P2_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31401041466479426427)
,p_prompt=>'Query'
,p_source=>'"from person retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31401043218939426432)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31223892227937125570:31223892470267125572'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager'
,p_step_sub_title=>'Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426163730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31687351746754990504)
,p_plug_name=>'Manager'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception,',
'j11.bonus',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ,',
'json_table(c.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar2(30) path ''$'') j11 ',
'where c.collection_name=''P3_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid and ',
' j0.rid=j11.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31687352183988990505)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31687352183988990505
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687352297544990506)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>10
,p_column_identifier=>'CR'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687352674410990507)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'CS'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687353040023990507)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'CT'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687353446486990507)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'CU'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687353861456990508)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'CV'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687354271090990508)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'CW'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687354616132990509)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'CX'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687355057705990509)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'CY'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687355447560990510)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'CZ'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687355860040990510)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'DA'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687356292431990511)
,p_db_column_name=>'BONUS'
,p_display_order=>110
,p_column_identifier=>'DB'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31687356658627990511)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316873567'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PERSON_ID:FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31687357129518990512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31687351746754990504)
,p_button_name=>'P3_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31687362555275990521)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31687357519237990513)
,p_name=>'P3_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31687351746754990504)
,p_use_cache_before_default=>'NO'
,p_source=>'"from manager retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31687361587772990519)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31687351746754990504)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31687362087978990520)
,p_event_id=>wwv_flow_api.id(31687361587772990519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31687351746754990504)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31687357970354990515)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P3_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426163708'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31690261246348634652)
,p_plug_name=>'Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ',
'where c.collection_name=''P4_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31690261664542634653)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31690261664542634653
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690261737042634653)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>10
,p_column_identifier=>'CR'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690262111405634654)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'CS'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690262527348634657)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'CT'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690262984377634658)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'CU'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690263348816634658)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'CV'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690263722548634658)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'CW'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690264174781634659)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'CX'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690264554965634659)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'CY'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690264927954634660)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'CZ'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690265351423634660)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'DA'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31690266115428634661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316902662'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PERSON_ID:FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31690266619435634662)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31690261246348634652)
,p_button_name=>'P4_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31690272076902634669)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690267044514634663)
,p_name=>'P4_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31690261246348634652)
,p_use_cache_before_default=>'NO'
,p_source=>'"from employee retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31690271005234634667)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31690261246348634652)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31690271578106634668)
,p_event_id=>wwv_flow_api.id(31690271005234634667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31690261246348634652)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31690267492119634663)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P4_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Previous_Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous_Employee'
,p_step_sub_title=>'Previous_Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426163644'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31690960657232649325)
,p_plug_name=>'Previous Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.isfired,',
'j8.salary',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.isfired[*]'' COLUMNS rid for ordinality, isfired varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ',
'where c.collection_name=''P5_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31690961046856649325)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31690961046856649325
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690961118929649325)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>10
,p_column_identifier=>'CR'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422474680842097627)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'CS'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422474814616097628)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'CT'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475023409097629)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'CU'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475184597097630)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'CV'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475243744097631)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'CW'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475350178097632)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'CX'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475474340097633)
,p_db_column_name=>'ISFIRED'
,p_display_order=>80
,p_column_identifier=>'CY'
,p_column_label=>'Isfired'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475532434097634)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'CZ'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31690965117246649330)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316909652'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PERSON_ID:FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:ISFIRED:SALARY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31690965667655649330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31690960657232649325)
,p_button_name=>'P5_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31690971051976649337)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690966052595649331)
,p_name=>'P5_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31690960657232649325)
,p_use_cache_before_default=>'NO'
,p_source=>'"from previous_employee retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31690970069108649335)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31690960657232649325)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31690970553607649337)
,p_event_id=>wwv_flow_api.id(31690970069108649335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31690960657232649325)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31690966447189649332)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P5_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Manager Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427034615'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31723217188967191334)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31723217208114191335)
,p_plug_name=>'Proposed Projects'
,p_parent_plug_id=>wwv_flow_api.id(31723217188967191334)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.project_no,',
'j1.project_title',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ',
'where c.collection_name=''P6_REST_PROP''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31723217492078191337)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'HUDSONMD'
,p_internal_uid=>31723217492078191337
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723217597763191338)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723217625241191339)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31726102170957853182)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317261022'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31723217841669191341)
,p_plug_name=>'Rejected Projects'
,p_parent_plug_id=>wwv_flow_api.id(31723217188967191334)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.project_no,',
'j1.project_title,',
'j2.comments',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.comments[*]'' COLUMNS rid for ordinality, comments varchar2(30) path ''$'') j2 ',
'where c.collection_name=''P6_REST_REJ''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31723218004021191343)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'HUDSONMD'
,p_internal_uid=>31723218004021191343
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723218115490191344)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723218245029191345)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723218452400191347)
,p_db_column_name=>'COMMENTS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31726102689402853186)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317261027'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO:COMMENTS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61889326506660249188)
,p_plug_name=>'Current Projects'
,p_parent_plug_id=>wwv_flow_api.id(31723217188967191334)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.project_no,',
'j1.project_title,',
'j2.project_active',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.project_active[*]'' COLUMNS rid for ordinality, project_active varchar2(30) path ''$'') j2 ',
'where c.collection_name=''P6_REST_PROJ''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_USER'
,p_plug_display_when_cond2=>'Interim_Manager'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(61889326592374249189)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_RETURNPAGE,P4_PROJECT_ID:6,#PROJECT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'HUDSONMD'
,p_internal_uid=>30666035471382276433
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61889326909402249192)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723216945978191332)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>40
,p_column_identifier=>'Q'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723217092974191333)
,p_db_column_name=>'PROJECT_ACTIVE'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Project active'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(62085356781447511623)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'308620657'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE::PROJECT_NO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62085613930277161475)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ',
'where c.collection_name=''P6_REST_EMP''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(62085614216215161477)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'HUDSONMD'
,p_internal_uid=>30862323095223188721
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(62085614308681161478)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(62085614512919161480)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(62085614555141161481)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(62085614641532161482)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723215384361191316)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>60
,p_column_identifier=>'V'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723215432329191317)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>70
,p_column_identifier=>'W'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723215548945191318)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>80
,p_column_identifier=>'X'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723215651064191319)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>90
,p_column_identifier=>'Y'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723215743076191320)
,p_db_column_name=>'SALARY'
,p_display_order=>100
,p_column_identifier=>'Z'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723215810948191321)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>110
,p_column_identifier=>'AA'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(62085916905684556266)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'308626258'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:SPOUSE_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62188926434353904357)
,p_plug_name=>'Manage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31723215940726191322)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(62188926434353904357)
,p_button_name=>'P6_GETDATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(62188926574615904358)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31723217208114191335)
,p_button_name=>'P6_NEWPROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'New Project'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP:P25_MGR,P25_TITLE:1,'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(62188927621943904369)
,p_name=>'select project'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_SELECTPROJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(62188928979765904382)
,p_name=>'Remove Employee from Project'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(62188929031732904383)
,p_event_id=>wwv_flow_api.id(62188928979765904382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'Delete from person_project where person_project_id = :p6_removeemployee '
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31723214337601191306)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DO_REST_EMP'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P6_REST_EMP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31723216056970191323)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DO_REST_PROJ'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P6_REST_PROJ'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31723218509892191348)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DO_REST_PROP'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P6_REST_PROP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31726065556998847607)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DO_REST_REJ'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P6_REST_REJ'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'President'
,p_page_mode=>'NORMAL'
,p_step_title=>'President'
,p_step_sub_title=>'President'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426164053'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31693921991841107183)
,p_plug_name=>'President'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception,',
'j11.bonus',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ,',
'json_table(c.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar2(30) path ''$'') j11 ',
'where c.collection_name=''P7_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid and ',
' j0.rid=j11.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31693922350203107188)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31693922350203107188
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693922501477107190)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>10
,p_column_identifier=>'CR'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693922962375107190)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'CS'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693923351136107191)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'CT'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693923733105107191)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'CU'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693924194191107192)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'CV'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693924549722107192)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'CW'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693924971226107193)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'CX'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693925389500107194)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'CY'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693925718766107194)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'CZ'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693926171601107195)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'DA'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31693926599802107195)
,p_db_column_name=>'BONUS'
,p_display_order=>110
,p_column_identifier=>'DB'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31693926902205107196)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316939270'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PERSON_ID:FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31693927483698107197)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31693921991841107183)
,p_button_name=>'P7_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31693952834707107212)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31693927817434107198)
,p_name=>'P7_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31693921991841107183)
,p_use_cache_before_default=>'NO'
,p_source=>'"from president retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31693951853381107210)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31693921991841107183)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31693952323951107211)
,p_event_id=>wwv_flow_api.id(31693951853381107210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31693921991841107183)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31693948290410107202)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P7_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Project Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Employee'
,p_step_sub_title=>'Project Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426164228'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31694358561852119916)
,p_plug_name=>'Project Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9',
'where c.collection_name=''P8_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31694358997300119917)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31694358997300119917
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694359097222119917)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>10
,p_column_identifier=>'CR'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694359433823119918)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'CS'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694359824921119920)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'CT'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694360284239119920)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'CU'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694360651868119920)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'CV'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694361024481119921)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'CW'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694361444740119921)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'CX'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694361825442119922)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'CY'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694362287199119922)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'CZ'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31694362635783119923)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'DA'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31694363439015119924)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316943635'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PERSON_ID:FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31694363913945119924)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31694358561852119916)
,p_button_name=>'P8_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31694369339715119931)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31694364317336119925)
,p_name=>'P8_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31694358561852119916)
,p_use_cache_before_default=>'NO'
,p_source=>'"from project_employee retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31694368332855119929)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31694358561852119916)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31694368887871119930)
,p_event_id=>wwv_flow_api.id(31694368332855119929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31694358561852119916)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31694364740223119926)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P8_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Department'
,p_step_sub_title=>'Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426164357'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31694489408556128260)
,p_plug_name=>'Department'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.dept_no,',
'j1.dept_name',
'from apex_collections c,',
'json_table(c.clob001, ''$.dept_no[*]'' COLUMNS rid for ordinality, dept_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar2(30) path ''$'') j1 ',
'where c.collection_name=''P9_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31694489852513128261)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31694489852513128261
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475645478097635)
,p_db_column_name=>'DEPT_NO'
,p_display_order=>10
,p_column_identifier=>'DB'
,p_column_label=>'Dept no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475799850097636)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>20
,p_column_identifier=>'DC'
,p_column_label=>'Dept name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31694493971410128266)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316944940'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'DEPT_NO:DEPT_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31694494496041128267)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31694489408556128260)
,p_button_name=>'P9_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31694509851233128274)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31694494876528128267)
,p_name=>'P9_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31694489408556128260)
,p_use_cache_before_default=>'NO'
,p_source=>'"from department retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31694508853924128273)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31694489408556128260)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31694509378958128274)
,p_event_id=>wwv_flow_api.id(31694508853924128273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31694489408556128260)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31694495204016128268)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Interim Manager '
,p_page_mode=>'NORMAL'
,p_step_title=>'Interim Manager '
,p_step_sub_title=>'Interim Manager '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426163749'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31681817811762866087)
,p_plug_name=>'Interim Manager'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception,',
'j11.bonus',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ,',
'json_table(c.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar2(30) path ''$'') j11 ',
'where c.collection_name=''P12_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid and ',
' j0.rid=j11.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31681818244970866088)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31681818244970866088
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681818363521866088)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>10
,p_column_identifier=>'CR'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681818747418866090)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'CS'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681819112188866091)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'CT'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681819546186866091)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'CU'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681819900946866091)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'CV'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681820393750866092)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'CW'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681820787712866092)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'CX'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422473814913097621)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>80
,p_column_identifier=>'CY'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422473981489097622)
,p_db_column_name=>'SALARY'
,p_display_order=>90
,p_column_identifier=>'CZ'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422474004208097623)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>100
,p_column_identifier=>'DA'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422474182347097624)
,p_db_column_name=>'BONUS'
,p_display_order=>110
,p_column_identifier=>'DB'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31681821172578866093)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316818212'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PERSON_ID:FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31681821699185866093)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31681817811762866087)
,p_button_name=>'P12_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31681828303472866103)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681822488707866094)
,p_name=>'P12_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31681817811762866087)
,p_use_cache_before_default=>'NO'
,p_source=>'"from interim_manager retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31681826477556866100)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31681817811762866087)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31681826900840866102)
,p_event_id=>wwv_flow_api.id(31681826477556866100)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31681817811762866087)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31681822886827866096)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P12_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Employee Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee Home'
,p_step_sub_title=>'Employee Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427010436'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61556399964515290990)
,p_name=>'Employee Information'
,p_template=>wwv_flow_api.id(60190168362714908442)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ',
'where c.collection_name=''P13_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(60190177178696908452)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556400805980290994)
,p_query_column_id=>1
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556401205132290994)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556401571667290995)
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Last name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556401960084290995)
,p_query_column_id=>4
,p_column_alias=>'HOME_ADDRESS'
,p_column_display_sequence=>4
,p_column_heading=>'Home address'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556402359421290995)
,p_query_column_id=>5
,p_column_alias=>'ZIPCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Zipcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556402757770290996)
,p_query_column_id=>6
,p_column_alias=>'HOME_PHONE'
,p_column_display_sequence=>6
,p_column_heading=>'Home phone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556403209075290996)
,p_query_column_id=>7
,p_column_alias=>'US_CITIZEN'
,p_column_display_sequence=>7
,p_column_heading=>'Us citizen'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_inline_lov=>'STATIC:Yes;1,No;0'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556403966143290997)
,p_query_column_id=>8
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Employee id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556404420754290997)
,p_query_column_id=>9
,p_column_alias=>'SALARY'
,p_column_display_sequence=>9
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61556404763195290997)
,p_query_column_id=>10
,p_column_alias=>'SALARY_EXCEPTION'
,p_column_display_sequence=>10
,p_column_heading=>'Salary exception'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61973784003105043862)
,p_name=>'Manager Information'
,p_template=>wwv_flow_api.id(60190168362714908442)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception,',
'j11.bonus',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ,',
'json_table(c.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar2(30) path ''$'') j11 ',
'where c.collection_name=''P13_REST_MAN''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid and ',
' j0.rid=j11.rid',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception,',
'j11.bonus',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ,',
'json_table(c.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar2(30) path ''$'') j11 ',
'where c.collection_name=''P13_REST_MAN''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid and ',
' j0.rid=j11.rid'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(60190177178696908452)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784078402043863)
,p_query_column_id=>1
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784177295043864)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784267258043865)
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Last name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784333386043866)
,p_query_column_id=>4
,p_column_alias=>'HOME_ADDRESS'
,p_column_display_sequence=>4
,p_column_heading=>'Home address'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784514971043867)
,p_query_column_id=>5
,p_column_alias=>'ZIPCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Zipcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784606078043868)
,p_query_column_id=>6
,p_column_alias=>'HOME_PHONE'
,p_column_display_sequence=>6
,p_column_heading=>'Home phone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784716936043869)
,p_query_column_id=>7
,p_column_alias=>'US_CITIZEN'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784856797043871)
,p_query_column_id=>8
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Employee id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973784999943043872)
,p_query_column_id=>9
,p_column_alias=>'SALARY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973785028790043873)
,p_query_column_id=>10
,p_column_alias=>'SALARY_EXCEPTION'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61973785472334043877)
,p_query_column_id=>11
,p_column_alias=>'BONUS'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61973786310698043885)
,p_plug_name=>'Current Projects'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.project_no,',
'j1.project_title',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ',
'where c.collection_name=''P13_REST_PROJECTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_USER'
,p_plug_display_when_cond2=>'Project_Employee'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(61977325974423953485)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>30754034853431980729
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61977326229097953488)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31723214075311191303)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>40
,p_column_identifier=>'Q'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(62423792801229879581)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'312005017'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31715008641036675434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61556399964515290990)
,p_button_name=>'P13_GETDATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31723214104023191304)
,p_name=>'P13_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(61556399964515290990)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31714997523057675423)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DoRest_Emp'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P13_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31715008760422675435)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DoRest_Man'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P13_REST_MAN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31715009694888675444)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DoRest_Proj'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P13_REST_PROJECTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project'
,p_step_sub_title=>'Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426164800'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31694922285225768454)
,p_plug_name=>'Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.project_no,',
'j1.project_title',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ',
'where c.collection_name=''P14_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31694922674138768458)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31694922674138768458
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422475974913097638)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'DE'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422476026816097639)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>30
,p_column_identifier=>'DF'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31694923556180768461)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316949236'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31694924039882768467)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31694922285225768454)
,p_button_name=>'P14_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31694929535811768486)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31694924439306768470)
,p_name=>'P14_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31694922285225768454)
,p_use_cache_before_default=>'NO'
,p_source=>'"from project retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31694928564990768483)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31694922285225768454)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31694929069571768485)
,p_event_id=>wwv_flow_api.id(31694928564990768483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31694922285225768454)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31694924810328768479)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P14_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Current Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Current Project'
,p_step_sub_title=>'Current Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426165218'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31695115452509804113)
,p_plug_name=>'Current Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.project_no,',
'j1.project_title,',
'j2.project_active',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.project_active[*]'' COLUMNS rid for ordinality, project_active varchar2(30) path ''$'') j2 ',
'where c.collection_name=''P15_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31695115800553804115)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31695115800553804115
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695115997273804115)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'DE'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695116346879804116)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>30
,p_column_identifier=>'DF'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422476150081097640)
,p_db_column_name=>'PROJECT_ACTIVE'
,p_display_order=>40
,p_column_identifier=>'DG'
,p_column_label=>'Project active'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31695116758380804118)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316951168'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO:PROJECT_ACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31695117253559804119)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31695115452509804113)
,p_button_name=>'P15_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31695122679070804127)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31695117662665804120)
,p_name=>'P15_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31695115452509804113)
,p_use_cache_before_default=>'NO'
,p_source=>'"from current_project retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31695121632407804125)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31695115452509804113)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31695122195822804126)
,p_event_id=>wwv_flow_api.id(31695121632407804125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31695115452509804113)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31695118029350804122)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P15_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426163809'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60244088011510650006)
,p_plug_name=>'Person'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ',
'where c.collection_name=''P16_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(60244088355105650007)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>29020797234113677251
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422471480219097603)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>10
,p_column_identifier=>'CR'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422471659357097604)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'CS'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422471846726097605)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'CT'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422472086572097606)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'CU'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422472216806097607)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'CV'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422472461752097608)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>60
,p_column_identifier=>'CW'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31422472673232097609)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>70
,p_column_identifier=>'CX'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(60244100600488651575)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'290208095'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PERSON_ID:FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31422473423971097617)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60244088011510650006)
,p_button_name=>'P16_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31333361806761024216)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31333361153112024209)
,p_name=>'P16_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(60244088011510650006)
,p_use_cache_before_default=>'NO'
,p_source=>'"from person retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(60244096876339650027)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(60244088011510650006)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(60244097373079650027)
,p_event_id=>wwv_flow_api.id(60244096876339650027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(60244088011510650006)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31146939767282165748)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P16_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Previous Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous Project'
,p_step_sub_title=>'Previous Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426170804'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31695213959924813887)
,p_plug_name=>'Previous Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.project_no,',
'j1.project_title,',
'j2.date_month,',
'j3.date_day,',
'j4.date_year,',
'j5.est_person_hours',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.date_month[*]'' COLUMNS rid for ordinality, date_month varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.date_day[*]'' COLUMNS rid for ordinality, date_day varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.date_year[*]'' COLUMNS rid for ordinality, date_year varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.est_person_hours[*]'' COLUMNS rid for ordinality, est_person_hours varchar2(30) path ''$'') j5 ',
'where c.collection_name=''P17_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31695214381269813888)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31695214381269813888
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695818031391896619)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'EJ'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695818163883896620)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'EK'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695818248073896621)
,p_db_column_name=>'DATE_MONTH'
,p_display_order=>30
,p_column_identifier=>'EL'
,p_column_label=>'Date month'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695818344108896622)
,p_db_column_name=>'DATE_DAY'
,p_display_order=>40
,p_column_identifier=>'EM'
,p_column_label=>'Date day'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695818488850896623)
,p_db_column_name=>'DATE_YEAR'
,p_display_order=>50
,p_column_identifier=>'EN'
,p_column_label=>'Date year'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695818569848896624)
,p_db_column_name=>'EST_PERSON_HOURS'
,p_display_order=>60
,p_column_identifier=>'EO'
,p_column_label=>'Est person hours'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31695215638121813889)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316952157'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'END_END_END_PERSON_ID:PROJECT_NO:PROJECT_TITLE:DATE_MONTH:DATE_DAY:DATE_YEAR:EST_PERSON_HOURS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31695216137337813890)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31695213959924813887)
,p_button_name=>'P17_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31695231590571813897)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31695216519057813891)
,p_name=>'P17_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31695213959924813887)
,p_use_cache_before_default=>'NO'
,p_source=>'"from previous_project retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31695230597348813896)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31695213959924813887)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31695231024034813896)
,p_event_id=>wwv_flow_api.id(31695230597348813896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31695213959924813887)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31695216961396813892)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P17_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Proposed Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Proposed Project'
,p_step_sub_title=>'Proposed Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426171020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31695923624705909889)
,p_plug_name=>'Proposed Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.project_no,',
'j1.project_title',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ',
'where c.collection_name=''P18_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31695924052878909891)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31695924052878909891
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695924140534909893)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'EJ'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695924548808909895)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'EK'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31695926541375909898)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316959266'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'END_END_END_PERSON_ID:PROJECT_NO:PROJECT_TITLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31695927010034909902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31695923624705909889)
,p_button_name=>'P18_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31695942342361909924)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31695927403050909903)
,p_name=>'P18_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31695923624705909889)
,p_use_cache_before_default=>'NO'
,p_source=>'"from proposed_project retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31695941389946909922)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31695923624705909889)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31695941849222909923)
,p_event_id=>wwv_flow_api.id(31695941389946909922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31695923624705909889)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31695927860828909915)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P18_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Rejected Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Rejected Project'
,p_step_sub_title=>'Rejected Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160426174045'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31697220910853469275)
,p_plug_name=>'Rejected Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190167902270908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select j0.project_no,',
'j1.project_title,',
'j2.comments',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.comments[*]'' COLUMNS rid for ordinality, comments varchar2(30) path ''$'') j2 ',
'where c.collection_name=''P19_REST_RESULTS''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31697221321096469277)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'Edit'
,p_icon_view_columns_per_row=>1
,p_owner=>'MICHAELMCCRORY@UTEXAS.EDU'
,p_internal_uid=>31697221321096469277
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31697221433331469279)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'DE'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31697221894291469281)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>30
,p_column_identifier=>'DF'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31695818673801896625)
,p_db_column_name=>'COMMENTS'
,p_display_order=>40
,p_column_identifier=>'DH'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31697222618201469282)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316972227'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO:COMMENTS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31697223175862469286)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31697220910853469275)
,p_button_name=>'P19_GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31697228460698469296)
,p_branch_name=>'Go to here'
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31697223474704469287)
,p_name=>'P19_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31697220910853469275)
,p_use_cache_before_default=>'NO'
,p_source=>'"from rejected_project retrieve *;"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31697227493182469294)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31697220910853469275)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31697227906543469295)
,p_event_id=>wwv_flow_api.id(31697227493182469294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31697220910853469275)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31697223868979469288)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Get Rest'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P19_REST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'President Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'President Home'
,p_step_sub_title=>'President Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427061455'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729090195991178781)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.person_id,',
'j1.first_name,',
'j2.last_name,',
'j3.home_address,',
'j4.zipcode,',
'j5.home_phone,',
'j6.us_citizen,',
'j7.employee_id,',
'j8.salary,',
'j9.salary_exception',
'from apex_collections c,',
'json_table(c.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar2(30) path ''$'') j2 ,',
'json_table(c.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar2(30) path ''$'') j3 ,',
'json_table(c.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar2(30) path ''$'') j4 ,',
'json_table(c.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar2(30) path ''$'') j5 ,',
'json_table(c.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar2(30) path ''$'') j6 ,',
'json_table(c.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar2(30) path ''$'') j7 ,',
'json_table(c.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar2(30) path ''$'') j8 ,',
'json_table(c.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar2(30) path ''$'') j9 ',
'where c.collection_name=''P22_REST_EMP''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid and ',
' j0.rid=j3.rid and ',
' j0.rid=j4.rid and ',
' j0.rid=j5.rid and ',
' j0.rid=j6.rid and ',
' j0.rid=j7.rid and ',
' j0.rid=j8.rid and ',
' j0.rid=j9.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31729090557955178782)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'HUDSONMD'
,p_internal_uid=>31729090557955178782
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729090605919178785)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'First name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729091480965178786)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729091833986178787)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Home address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729092249443178788)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729092602683178788)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>60
,p_column_identifier=>'V'
,p_column_label=>'Person id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729093077222178789)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>70
,p_column_identifier=>'W'
,p_column_label=>'Home phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729093411473178790)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>80
,p_column_identifier=>'X'
,p_column_label=>'Us citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729093831811178790)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>90
,p_column_identifier=>'Y'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729094261113178791)
,p_db_column_name=>'SALARY'
,p_display_order=>100
,p_column_identifier=>'Z'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729091086901178786)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>110
,p_column_identifier=>'AA'
,p_column_label=>'Salary exception'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31729094654059178792)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317290947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:HOME_ADDRESS:ZIPCODE:SPOUSE_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729095136145178796)
,p_plug_name=>'Manage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729095939055178797)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729096328392178798)
,p_plug_name=>'Current Projects'
,p_parent_plug_id=>wwv_flow_api.id(31729095939055178797)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.project_no,',
'j1.project_title,',
'j2.project_active',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.project_active[*]'' COLUMNS rid for ordinality, project_active varchar2(30) path ''$'') j2 ',
'where c.collection_name=''P22_REST_PROJ''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31729096745673178799)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_RETURNPAGE,P4_PROJECT_ID:6,#PROJECT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'HUDSONMD'
,p_internal_uid=>31729096745673178799
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729096810457178799)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729097219653178799)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>40
,p_column_identifier=>'Q'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729097635237178800)
,p_db_column_name=>'PROJECT_ACTIVE'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Project active'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31729108036656178800)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317291081'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE::PROJECT_NO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729108558966178801)
,p_plug_name=>'Proposed Projects'
,p_parent_plug_id=>wwv_flow_api.id(31729095939055178797)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.project_no,',
'j1.project_title',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ',
'where c.collection_name=''P22_REST_PROP''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31729108948543178802)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_NUM,P29_TITLE,P29_COMMENTS:#PROJECT_NO#,#PROJECT_TITLE#,'
,p_detail_link_text=>'Judge'
,p_icon_view_columns_per_row=>1
,p_owner=>'HUDSONMD'
,p_internal_uid=>31729108948543178802
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729109066439178802)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729109432909178802)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31729109873832178803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317291099'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729110703588178804)
,p_plug_name=>'Rejected Projects'
,p_parent_plug_id=>wwv_flow_api.id(31729095939055178797)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select distinct j0.project_no,',
'j1.project_title,',
'j2.comments',
'from apex_collections c,',
'json_table(c.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar2(30) path ''$'') j0 ,',
'json_table(c.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar2(30) path ''$'') j1 ,',
'json_table(c.clob001, ''$.comments[*]'' COLUMNS rid for ordinality, comments varchar2(30) path ''$'') j2 ',
'where c.collection_name=''P22_REST_REJ''  and ',
' j0.rid=j0.rid and ',
' j0.rid=j1.rid and ',
' j0.rid=j2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31729111127842178805)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'HUDSONMD'
,p_internal_uid=>31729111127842178805
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729111252612178805)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729111659991178805)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31729112018515178806)
,p_db_column_name=>'COMMENTS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31729112492156178807)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317291125'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_TITLE:PROJECT_NO:COMMENTS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31729095547077178797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31729095136145178796)
,p_button_name=>'P22_GETDATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Get Data'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31729127380928178821)
,p_name=>'select project'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_SELECTPROJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31729127774875178823)
,p_name=>'Remove Employee from Project'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31729128221831178823)
,p_event_id=>wwv_flow_api.id(31729127774875178823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'Delete from person_project where person_project_id = :p22_removeemployee '
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729112916410178808)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DO_REST_EMP'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P22_REST_EMP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729116588105178812)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DO_REST_PROJ'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P22_REST_PROJ'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729120172875178815)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DO_REST_PROP'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P22_REST_PROP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729123788310178818)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'DO_REST_REJ'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P22_REST_REJ'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'New Project'
,p_page_mode=>'MODAL'
,p_step_title=>'New Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427051139'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31731094279361452501)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31731094617957452505)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(31731094279361452501)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31731094879711452507)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31731094279361452501)
,p_button_name=>'Continue'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Continue'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31734921819439518011)
,p_branch_name=>'Go to next'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP:P26_QUERY,P26_MGRQUERY,P26_TITLE,P26_DEPTOPT,P26_MGR:&P25_QUERY.,&P25_LINKQUERY.,&P25_TITLE.,&P25_DEPTOPT.,&P25_MGR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31731094348700452502)
,p_name=>'P25_TITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31731094279361452501)
,p_prompt=>'Project Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31731094562850452504)
,p_name=>'P25_MGR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31731094279361452501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31731096415310452523)
,p_name=>'P25_QUERY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31731094279361452501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31731096586308452524)
,p_name=>'P25_DEPTOPT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31731094279361452501)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Purchasing;501,Sales;502,Marketing;503,R&D;504,Accounting;505'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31731098476155452543)
,p_name=>'P25_LINKQUERY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31731094279361452501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31731094923259452508)
,p_name=>'Cancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(31731094617957452505)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31731095067039452509)
,p_event_id=>wwv_flow_api.id(31731094923259452508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31731097117773452530)
,p_name=>'Create Query'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P25_TITLE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31731097320078452532)
,p_event_id=>wwv_flow_api.id(31731097117773452530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_QUERY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var num= Math.floor(Math.random()*1000+800);',
'$s("P25_QUERY", ''"INSERT Proposed_Project( project-no:= ''+num+'' ,project-title := \"''+$v("P25_TITLE")+''\");"'');',
'$s("P25_LINKQUERY", ''"MODIFY Manager (projects-managing := INCLUDE Project WITH( project-no = ''+num+'')) where person_id=''+$v("P25_MGR")+'';"'')',
''))
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'New Project 2'
,p_page_mode=>'MODAL'
,p_step_title=>'New Project 2'
,p_step_sub_title=>'New Project 2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427064458'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31736265026996701927)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31736265415966701928)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31736265026996701927)
,p_button_name=>'Create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31734922453902518017)
,p_name=>'P26_DEPTQUERY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31736265026996701927)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31734923517889518028)
,p_name=>'P26_MGR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31736265026996701927)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736266636759701931)
,p_name=>'P26_TITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31736265026996701927)
,p_prompt=>'Project Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736266917344701933)
,p_name=>'P26_DEPTOPT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31736265026996701927)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Purchasing;501,Sales;502,Marketing;503,R&D;504,Accounting;505'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736267711173701934)
,p_name=>'P26_MGRQUERY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31736265026996701927)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736558505790701935)
,p_name=>'P26_QUERY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31736265026996701927)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31736566902584701949)
,p_name=>'Create Query'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P26_TITLE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31736567414238701950)
,p_event_id=>wwv_flow_api.id(31736566902584701949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_QUERY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var num= Math.floor(Math.random()*1000+800);',
'var insert = ''"INSERT Proposed_Project( project-no:= ''+num+'' ,project-title := \\"''+$v("P26_TITLE")+''\\");"'';',
'var mgr = ''"MODIFY Manager (projects-managing := INCLUDE Proposed_Project WITH( project-no = ''+num+'')) where person_id=''+$v("P26_MGR")+'';"'';',
'var dept=''"MODIFY Department (project-at := INCLUDE Proposed_Project WITH( project-no = ''+num+'')) where dept-no=''+$v("P26_DEPTOPT")+'';"'';',
'$s("P26_QUERY", insert);',
'$s("P26_MGRQUERY", mgr);',
'$s("P26_DEPTQUERY", dept);',
'',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31736559322853701940)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Create Proj'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_RESULT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31736265415966701928)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31734923703511518030)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Link Mgr'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_RESULT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31736265415966701928)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31734924732642518040)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Link Dept'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_RESULT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31736265415966701928)
,p_process_when=>'P26_DEPTOPT'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31734923649618518029)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Judge Project'
,p_page_mode=>'MODAL'
,p_step_title=>'Judge Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427064138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31734925655678518049)
,p_plug_name=>'Judge'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31745049737614442006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31734925655678518049)
,p_button_name=>'Reject'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Reject'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31745049674259442005)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31734925655678518049)
,p_button_name=>'Accept'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_image_alt=>'Accept'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31745052652510442035)
,p_branch_name=>'Go To Page 32 Acc'
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP:P32_ACCEPTQUERY,P32_REJECTQUERY,P32_TITLE,P32_NUM,P32_COMMENTS,P32_CHOICE:&P29_ACCEPTQUERY.,&P29_REJECTQUERY.,&P29_TITLE.,&P29_NUM.,,A&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31745053023823442039)
,p_branch_name=>'Go To Page 32 Rej'
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP:P32_ACCEPTQUERY,P32_REJECTQUERY,P32_TITLE,P32_NUM,P32_COMMENTS,P32_CHOICE:&P29_ACCEPTQUERY.,&P29_REJECTQUERY.,&P29_TITLE.,&P29_NUM.,&P29_COMMENTS.,R&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31734925724242518050)
,p_name=>'P29_NUM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31734925655678518049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31745049245323442001)
,p_name=>'P29_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31734925655678518049)
,p_prompt=>'Title'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31745051038752442019)
,p_name=>'P29_ACCEPTQUERY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31734925655678518049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31745051110961442020)
,p_name=>'P29_REJECTQUERY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31734925655678518049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31745052303298442032)
,p_name=>'P29_COMMENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31734925655678518049)
,p_prompt=>'Reason Rejected?'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31745052775239442036)
,p_name=>'P29_CHOICE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31734925655678518049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31745053629722442045)
,p_name=>'Queries'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31745053722250442046)
,p_event_id=>wwv_flow_api.id(31745053629722442045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_REJECTQUERY,P29_ACCEPTQUERY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$s("P29_ACCEPTQUERY", ''"Insert Current-Project FROM Project where project-no=''+$v("P29_NUM")+'' (project-active:=FALSE);"'');',
'$s("P29_REJECTQUERY", ''"Insert Rejected-Project FROM Project where project-no=''+$v("P29_NUM")+'' (comments := \\"''+$v("P29_COMMENTS")+''\\");"'');'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31745054170030442050)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Reject'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P29_REST'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31745049737614442006)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31749191582950755010)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Accept'
,p_attribute_01=>wwv_flow_api.id(31223892470267125572)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P29_REST'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31745049674259442005)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31749192411483755019)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(60190194549481908476)
,p_name=>'Login Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login Page'
,p_step_sub_title=>'Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(60190154188584908427)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'HUDSONMD'
,p_last_upd_yyyymmddhh24miss=>'20160427002758'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31717875956351214257)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(60190168362714908442)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31717876391189214259)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31717875956351214257)
,p_button_name=>'LOGIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(60190189343181908467)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31717920912538214276)
,p_branch_name=>'Manager Home Redirect'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P0_USER,P0_USERID:&P31_USERNAME.,1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P31_USERNAME'
,p_branch_condition_text=>'Manager'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31717919739137214275)
,p_branch_name=>'Interim Manager Home Redirect'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P0_USER,P0_USERID:&P31_USERNAME.,1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P31_USERNAME'
,p_branch_condition_text=>'Interim_Manager'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31717920140525214276)
,p_branch_name=>'Employee Home Redirect'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP:P0_USER,P0_USERID:&P31_USERNAME.,7&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P31_USERNAME'
,p_branch_condition_text=>'Employee'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31717921324989214276)
,p_branch_name=>'Project Employee Home Redirect'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP:P0_USER,P0_USERID:&P31_USERNAME.,7&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P31_USERNAME'
,p_branch_condition_text=>'Project_Employee'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31717919323214214273)
,p_branch_name=>'President Home Redirect'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP:P0_USER,P0_USERID:&P31_USERNAME.,8&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>60
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P31_USERNAME'
,p_branch_condition_text=>'President'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31717876783250214261)
,p_name=>'P31_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31717875956351214257)
,p_prompt=>'User Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:President;President,Manager;Manager, Interim Manager;Interim_Manager, Employee;Employee, Project Employee;Project_Employee'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(60190188870607908466)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31717918301811214269)
,p_name=>'Set P31_USERNAME'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(31717876391189214259)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31717918858929214270)
,p_event_id=>wwv_flow_api.id(31717918301811214269)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31717877959462214268)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/shared_components/logic/webservices/rest
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31223892227937125570)
,p_name=>'Rest'
,p_url=>'aevum.cs.utexas.edu:8050/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31223892470267125572)
,p_ws_id=>wwv_flow_api.id(31223892227937125570)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223892779156125576)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31146939989986165750)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31146939767282165748)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31401044007304426438)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31401043218939426432)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681823609730866097)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31681822886827866096)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31687358771802990517)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31687357970354990515)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690268247731634664)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31690267492119634663)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690967252283649333)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31690966447189649332)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31693949054346107206)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31693948290410107202)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694365522563119927)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31694364740223119926)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694496064061128269)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31694495204016128268)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694925732264768481)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31694924810328768479)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695118891606804123)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31695118029350804122)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695217782149813893)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31695216961396813892)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695938563582909917)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31695927860828909915)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31697224647713469291)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31697223868979469288)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31714997770936675425)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31714997523057675423)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715008989176675437)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31715008760422675435)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009740745675445)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31715009694888675444)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723214570198191308)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31723214337601191306)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723216185405191324)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31723216056970191323)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723218618251191349)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31723218509892191348)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065672968847608)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31726065556998847607)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729113795158178809)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31729112916410178808)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729116964051178812)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31729116588105178812)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729123393083178817)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31729120172875178815)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729124184936178818)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31729123788310178818)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734923895286518031)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31734923703511518030)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734924875762518041)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31734924732642518040)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736560127776701942)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31736559322853701940)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749190715731755002)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31745054170030442050)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749191752811755012)
,p_parameter_id=>wwv_flow_api.id(31223892779156125576)
,p_process_id=>wwv_flow_api.id(31749191582950755010)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223893036133125577)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31333360840229024206)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31146939767282165748)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31401044868080426440)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31401043218939426432)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681826061439866100)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31681822886827866096)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31687361154405990519)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31687357970354990515)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690270629918634666)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31690267492119634663)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690969618044649335)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31690966447189649332)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31693951448500107209)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31693948290410107202)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694367950397119929)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31694364740223119926)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694508490935128273)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31694495204016128268)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694928172884768483)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31694924810328768479)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695121208091804125)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31695118029350804122)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695230198732813895)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31695216961396813892)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695940911357909921)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31695927860828909915)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31697227020566469293)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31697223868979469288)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715008340494675431)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31714997523057675423)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009551155675443)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31715008760422675435)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009876300675446)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31715009694888675444)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723215158625191314)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31723214337601191306)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723216275362191325)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31723216056970191323)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723218718285191350)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31723218509892191348)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065781712847609)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31726065556998847607)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729116188261178812)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31729112916410178808)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729117380991178813)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31729116588105178812)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729120560992178815)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31729120172875178815)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729124571004178818)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31729123788310178818)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734923987178518032)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31734923703511518030)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734924963242518042)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31734924732642518040)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736562588728701945)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31736559322853701940)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749191308919755008)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31745054170030442050)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749192398849755018)
,p_parameter_id=>wwv_flow_api.id(31223893036133125577)
,p_process_id=>wwv_flow_api.id(31749191582950755010)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_USERDB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223893358876125577)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31333360584503024203)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31146939767282165748)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31401045660431426442)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31401043218939426432)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681824871421866098)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31681822886827866096)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31687359984494990518)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31687357970354990515)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690269429517634666)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31690267492119634663)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690968425446649334)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31690966447189649332)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31693950232738107208)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31693948290410107202)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694366793771119928)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31694364740223119926)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694497263913128270)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31694495204016128268)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694926917256768482)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31694924810328768479)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695120057678804124)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31695118029350804122)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695228912305813895)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31695216961396813892)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695939762072909919)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31695927860828909915)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31697225866382469292)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31697223868979469288)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715008004169675428)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31714997523057675423)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009240872675440)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31715008760422675435)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009923473675447)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31715009694888675444)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723214864598191311)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31723214337601191306)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723216354364191326)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31723216056970191323)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726064968058847601)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31723218509892191348)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065845248847610)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31726065556998847607)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729114954259178811)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31729112916410178808)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729117793882178813)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31729116588105178812)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729120932344178816)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31729120172875178815)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729124911999178819)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31729123788310178818)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734924048029518033)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31734923703511518030)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734925085007518043)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31734924732642518040)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736561321165701944)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31736559322853701940)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749191011237755005)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31745054170030442050)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749192031565755015)
,p_parameter_id=>wwv_flow_api.id(31223893358876125577)
,p_process_id=>wwv_flow_api.id(31749191582950755010)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223893637937125578)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31333360311309024201)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31146939767282165748)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31401046405610426443)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31401043218939426432)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681824087666866097)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31681822886827866096)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31687359184291990517)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31687357970354990515)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690268681851634665)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31690267492119634663)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690967671965649333)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31690966447189649332)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31693949479457107206)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31693948290410107202)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694365977496119927)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31694364740223119926)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694496402727128269)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31694495204016128268)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694926113357768481)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31694924810328768479)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695119250945804124)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31695118029350804122)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695228163396813894)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31695216961396813892)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695938997056909917)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31695927860828909915)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31697225096877469291)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31697223868979469288)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31714997804317675426)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31714997523057675423)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009029425675438)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31715008760422675435)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715010082749675448)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31715009694888675444)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723214681993191309)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31723214337601191306)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723216469719191327)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31723216056970191323)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065024132847602)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31723218509892191348)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065963958847611)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31726065556998847607)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729114103274178810)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31729112916410178808)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729118142075178813)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31729116588105178812)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729121378053178816)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31729120172875178815)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729125359068178819)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31729123788310178818)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734924127196518034)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31734923703511518030)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734925193668518044)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31734924732642518040)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736560578286701943)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31736559322853701940)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749190812649755003)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31745054170030442050)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749191883565755013)
,p_parameter_id=>wwv_flow_api.id(31223893637937125578)
,p_process_id=>wwv_flow_api.id(31749191582950755010)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223893928641125578)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'MODEL '
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31333360462117024202)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31146939767282165748)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31401047257558426445)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31401043218939426432)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681824476267866098)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31681822886827866096)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31687359545581990517)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31687357970354990515)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690269093854634665)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31690267492119634663)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690968006221649334)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31690966447189649332)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
end;
/
begin
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31693949841626107207)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31693948290410107202)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694366305682119928)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31694364740223119926)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694496880881128270)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31694495204016128268)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694926539866768481)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31694924810328768479)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695119646940804124)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31695118029350804122)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695228575550813894)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31695216961396813892)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695939310209909917)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31695927860828909915)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31697225457193469292)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31697223868979469288)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31714997973844675427)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31714997523057675423)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009106536675439)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31715008760422675435)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715010122618675449)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31715009694888675444)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723214781089191310)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31723214337601191306)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723216568734191328)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31723216056970191323)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065126091847603)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31723218509892191348)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726066048736847612)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31726065556998847607)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729114577094178810)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31729112916410178808)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729118540245178814)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31729116588105178812)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729121738695178816)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31729120172875178815)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729125774169178819)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31729123788310178818)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734924249060518035)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31734923703511518030)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734925256003518045)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31734924732642518040)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736560929900701944)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31736559322853701940)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749190938552755004)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31745054170030442050)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749191982735755014)
,p_parameter_id=>wwv_flow_api.id(31223893928641125578)
,p_process_id=>wwv_flow_api.id(31749191582950755010)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223894221252125579)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'ReturnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31333360699192024204)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31146939767282165748)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31401048008452426446)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31401043218939426432)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681825208364866098)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31681822886827866096)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31687360340629990518)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31687357970354990515)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690269804389634666)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31690267492119634663)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690968815522649334)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31690966447189649332)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31693950605503107208)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31693948290410107202)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694367138026119928)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31694364740223119926)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694497699716128272)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31694495204016128268)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694927318070768482)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31694924810328768479)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695120490936804124)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31695118029350804122)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695229384962813895)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31695216961396813892)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695940119288909920)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31695927860828909915)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31697226294488469292)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31697223868979469288)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715008114000675429)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31714997523057675423)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009320908675441)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31715008760422675435)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715010202023675450)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31715009694888675444)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723214902783191312)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31723214337601191306)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723216665572191329)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31723216056970191323)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065265168847604)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31723218509892191348)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726066171146847613)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31726065556998847607)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729115387632178811)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31729112916410178808)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729118925913178814)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31729116588105178812)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729122134088178817)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31729120172875178815)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729126122022178819)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31729123788310178818)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734924391324518036)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31734923703511518030)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734925337506518046)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31734924732642518040)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736561745483701944)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31736559322853701940)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749191194402755006)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31745054170030442050)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749192139498755016)
,p_parameter_id=>wwv_flow_api.id(31223894221252125579)
,p_process_id=>wwv_flow_api.id(31749191582950755010)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNDIM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223894542449125580)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'ReturnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31333360748912024205)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31146939767282165748)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31401048861651426447)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31401043218939426432)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681825621109866099)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31681822886827866096)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31687360765283990518)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31687357970354990515)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690270205862634666)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31690267492119634663)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690969249823649334)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31690966447189649332)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31693951098770107209)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31693948290410107202)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694367504277119929)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31694364740223119926)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694508067776128272)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31694495204016128268)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694927791881768482)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31694924810328768479)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695120875147804125)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31695118029350804122)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695229713919813895)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31695216961396813892)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695940507960909921)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31695927860828909915)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31697226613712469292)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31697223868979469288)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715008239933675430)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31714997523057675423)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715009495501675442)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31715008760422675435)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723213889350191301)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31715009694888675444)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723215038918191313)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31723214337601191306)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723216758264191330)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31723216056970191323)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065334381847605)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31723218509892191348)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726066229420847614)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31726065556998847607)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729115701718178811)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31729112916410178808)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729119314795178814)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31729116588105178812)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729122579584178817)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31729120172875178815)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729126567655178821)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31729123788310178818)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734924437163518037)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31734923703511518030)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734925424636518047)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31734924732642518040)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736562110810701945)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31736559322853701940)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749191233035755007)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31745054170030442050)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749192214897755017)
,p_parameter_id=>wwv_flow_api.id(31223894542449125580)
,p_process_id=>wwv_flow_api.id(31749191582950755010)
,p_map_type=>'ITEM'
,p_parm_value=>'P0_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223894899063125582)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31146939880533165749)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31146939767282165748)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31401049604759426448)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31401043218939426432)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681823257673866097)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31681822886827866096)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31687358370659990516)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31687357970354990515)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690267843168634664)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31690267492119634663)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690966852628649333)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31690966447189649332)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31693948696063107205)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31693948290410107202)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694365154527119927)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31694364740223119926)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694495692245128269)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31694495204016128268)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31694925384985768480)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31694924810328768479)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695118467454804122)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31695118029350804122)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695217320694813893)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31695216961396813892)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31695938152895909916)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31695927860828909915)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31697224294766469290)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31697223868979469288)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31714997683646675424)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31714997523057675423)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Employee retrieve * where person_id=7;"'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31715008876379675436)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31715008760422675435)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Employee retrieve * of employee-manager where person_id=5;"'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723213990652191302)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31715009694888675444)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Project_Employee retrieve * of current-projects where person_id=7;"'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723214490587191307)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31723214337601191306)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Employee retrieve * where person_id of employee-manager=1 ;" '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31723216848004191331)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31723216056970191323)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Current_Project retrieve * where person_id of project-manager=1;" '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726065416140847606)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31723218509892191348)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Proposed_Project retrieve * where person_id of project-manager=1;" '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31726066331312847615)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31726065556998847607)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Rejected_Project retrieve * where person_id of project-manager=1;" '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729113372650178809)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31729112916410178808)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Employee retrieve *;" '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729119712893178815)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31729116588105178812)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Current_Project retrieve *;" '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729122976468178817)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31729120172875178815)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Proposed_Project retrieve *;" '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729126996605178821)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31729123788310178818)
,p_map_type=>'STATIC'
,p_parm_value=>'"From Rejected_Project retrieve * ;" '
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734924556845518038)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31734923703511518030)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MGRQUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31734925532036518048)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31734924732642518040)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DEPTQUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736559734034701941)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31736559322853701940)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749190666723755001)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31745054170030442050)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_REJECTQUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31749191650975755011)
,p_parameter_id=>wwv_flow_api.id(31223894899063125582)
,p_process_id=>wwv_flow_api.id(31749191582950755010)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_ACCEPTQUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31223895175266125582)
,p_ws_opers_id=>wwv_flow_api.id(31223892470267125572)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
