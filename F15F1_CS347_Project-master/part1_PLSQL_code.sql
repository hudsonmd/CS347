-- Page 6, "Create RFE"
    -- CREATE_RFE
        BEGIN
        INSERT INTO F15F1_RFE
        VALUES (1, 160, :P6_EXPLANATION, :P6_ALT_PROTECTIONS, :P6_APPROVAL_REVIEW_DATE, :SELECT_EMP, sysdate(), 'EMP', 3, sysdate(), 'EMP')
        RETURNING RFE_ID into :P6_RETURNED_RFE_ID;

        INSERT INTO F15F1_HISTORY(HIS_DATE, F15F1_RFE_RFE_ID, F15F1_STATUS_STATUS, F15F1_EMP_EMP_ID)
        VALUES(SYSDATE(), :P6_RETURNED_RFE_ID, 160, :SELECT_EMP);

        END;

    -- INSERT_COMMENT
        IF(:P6_COMMENT IS NOT NULL) THEN

        INSERT INTO F15F1_COMMENT(F15F1_RFE_RFE_ID, COMMENT_ENTRY_DATE, COMMENTS, F15F1_EMP_EMP_ID)
        VALUES (:P6_RETURNED_RFE_ID, SYSDATE(), :P6_COMMENT, :SELECT_EMP);

        END IF;

    -- INSERT_TASK
        DECLARE
            task_list APEX_APPLICATION_GLOBAL.VC_ARR2;
            curr_task_id VARCHAR2(50);

        BEGIN
        IF(:P6_TASK IS NOT NULL) THEN
        task_list := APEX_UTIL.STRING_TO_TABLE(:P6_TASK);
            FOR i IN 1..task_list.COUNT LOOP
                SELECT TASK_ID INTO curr_task_id FROM F15F1_Task
                    WHERE TASK_ABBREVIATION = task_list(i);
                INSERT INTO F15F1_RFE_TASK
                (F15F1_RFE_RFE_ID, F15F1_TASK_TASK_ID)
                VALUES 
                (:P6_RETURNED_RFE_ID, curr_task_id);
            END LOOP;
        END IF;
        END;

    -- INSERT_CONTACTS
        DECLARE
            contact_list APEX_APPLICATION_GLOBAL.VC_ARR2;
            curr_contact_id VARCHAR2(50);

        BEGIN

        IF(:P6_CONTACT IS NOT NULL) THEN
            contact_list := APEX_UTIL.STRING_TO_TABLE(:P6_CONTACT);
            FOR i IN 1..contact_list.COUNT LOOP
                SELECT EMP_ID INTO curr_contact_id FROM F15F1_Emp
                    WHERE NAME = contact_list(i);
                INSERT INTO F15F1_CONTACT
                (EFFECTIVE_DATE, F15F1_Emp_EMP_ID, F15F1_RFE_RFE_ID, F15F1_ROLE_ROLE_CODE)
                VALUES 
                (SYSDATE(), curr_contact_id, :P6_RETURNED_RFE_ID, 100);
            END LOOP;
            END IF;
        END;

-- Page 10, "Recall"
    -- RECALL_RFE
        UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 120
            WHERE RFE_ID = :P10_RFE_ID;
        DELETE FROM F15F1_APPROVER
            WHERE F15F1_RFE_RFE_ID = :P10_RFE_ID;
            
        INSERT INTO F15F1_HISTORY(HIS_DATE, F15F1_RFE_RFE_ID, F15F1_STATUS_STATUS, F15F1_EMP_EMP_ID)
        VALUES(SYSDATE(), :P10_RFE_ID, 120, :SELECT_EMP);

-- Page 21, "Submit RFE"
    -- UPDATE_RFE_STATUS
        IF :P21_REVIEW_DATE IS NOT NULL THEN
            UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 100, EXPLANATION = :P21_EXPLANATION,
                ALT_PROTECTIONS = :P21_ALT_PROTECTIONS, APPROVAL_REVIEW_DATE = :P21_REVIEW_DATE
                WHERE RFE_ID = :P21_RFE_ID;
        ELSE
            UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 100, EXPLANATION = :P21_EXPLANATION,
                ALT_PROTECTIONS = :P21_ALT_PROTECTIONS
                WHERE RFE_ID = :P21_RFE_ID;
        END IF;

    -- INSERT_INITIAL_APPROVER
        DECLARE
            approver integer;
        BEGIN
            SELECT e2.emp_id INTO approver FROM F15F1_Emp e1 JOIN F15F1_Emp e2 ON (e1.F15F1_Lab_Lab_id = e2.F15F1_Lab_Lab_id)
                        WHERE e1.emp_id = :SELECT_EMP AND e2.admin = 'Y';
            INSERT INTO F15F1_APPROVER(APPROVER_ID, F15F1_EMP_EMP_ID, F15F1_RFE_RFE_ID) VALUES(1, approver, :P21_RFE_ID);
        END;

    -- UPDATE_RFE_HISTORY
        BEGIN
        INSERT INTO F15F1_HISTORY (HIS_DATE, F15F1_RFE_RFE_ID, F15F1_STATUS_STATUS, F15F1_EMP_EMP_ID)
        VALUES (SYSDATE(), :P21_RFE_ID, 100, :SELECT_EMP);
        END;

    -- INSERT_COMMENT
        IF(:P21_COMMENT IS NOT NULL) THEN
        INSERT INTO F15F1_COMMENT(F15F1_RFE_RFE_ID, COMMENT_ENTRY_DATE, COMMENTS, F15F1_EMP_EMP_ID)
        VALUES (:P21_RFE_ID, SYSDATE(), :P21_COMMENT, :SELECT_EMP);
        END IF;

    -- INSERT_TASK
        DECLARE
            task_list APEX_APPLICATION_GLOBAL.VC_ARR2;
            curr_task_id VARCHAR2(50);

        BEGIN
        IF(:P21_TASK IS NOT NULL) THEN
        task_list := APEX_UTIL.STRING_TO_TABLE(:P21_TASK);
            FOR i IN 1..task_list.COUNT LOOP
                SELECT TASK_ID INTO curr_task_id FROM F15F1_Task
                    WHERE TASK_ABBREVIATION = task_list(i);
                INSERT INTO F15F1_RFE_TASK
                (F15F1_RFE_RFE_ID, F15F1_TASK_TASK_ID)
                VALUES 
                (:P21_RFE_ID, curr_task_id);
            END LOOP;
        END IF;
        END;

    -- INSERT_CONTACTS
        DECLARE
            contact_list APEX_APPLICATION_GLOBAL.VC_ARR2;
            curr_contact_id VARCHAR2(50);

        BEGIN
        IF(:P21_CONTACT IS NOT NULL) THEN
        contact_list := APEX_UTIL.STRING_TO_TABLE(:P21_CONTACT);
            FOR i IN 1..contact_list.COUNT LOOP
                SELECT EMP_ID INTO curr_contact_id FROM F15F1_Emp
                    WHERE NAME = contact_list(i);
                INSERT INTO F15F1_CONTACT
                (EFFECTIVE_DATE, F15F1_Emp_EMP_ID, F15F1_RFE_RFE_ID, F15F1_ROLE_ROLE_CODE)
                VALUES 
                (SYSDATE(), curr_contact_id, :P21_RFE_ID, 100);
            END LOOP;
        END IF;
        END;

-- Page 24, "Approve RFE"
    -- UPDATE_STATUS
        DECLARE
            curr_status NUMBER := 0;
        BEGIN
        SELECT F15F1_STATUS_STATUS INTO curr_status FROM F15F1_RFE WHERE
                RFE_ID = :P24_RFE_ID;
        IF curr_status = 100 THEN
            UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 102, EXPLANATION = :P24_EXPLANATION,
                ALT_PROTECTIONS = :P24_ALT_PROTECTIONS, APPROVAL_REVIEW_DATE = :P24_APPROVAL_REVIEW_DATE
                WHERE RFE_ID = :P24_RFE_ID; 
        ELSIF curr_status = 102 THEN
            UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 140, EXPLANATION = :P24_EXPLANATION,
                ALT_PROTECTIONS = :P24_ALT_PROTECTIONS, APPROVAL_REVIEW_DATE = :P24_APPROVAL_REVIEW_DATE
                WHERE RFE_ID = :P24_RFE_ID; 
        ELSIF curr_status = 140 THEN
            UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 103, EXPLANATION = :P24_EXPLANATION,
                ALT_PROTECTIONS = :P24_ALT_PROTECTIONS, APPROVAL_REVIEW_DATE = :P24_APPROVAL_REVIEW_DATE
                WHERE RFE_ID = :P24_RFE_ID; 
        ELSIF curr_status = 103 THEN
            UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 104, EXPLANATION = :P24_EXPLANATION,
                ALT_PROTECTIONS = :P24_ALT_PROTECTIONS, APPROVAL_REVIEW_DATE = :P24_APPROVAL_REVIEW_DATE
                WHERE RFE_ID = :P24_RFE_ID; 
        END IF;   
        END;

    -- UPDATE_APPROVER
        DECLARE
            approver integer;
            curr_status integer;
        BEGIN
            SELECT F15F1_STATUS_STATUS INTO curr_status FROM F15F1_RFE
                WHERE RFE_ID = :P24_RFE_ID;
            IF curr_status = 102 THEN
                SELECT e2.emp_id INTO approver FROM F15F1_Emp e1 JOIN F15F1_Emp e2 ON (e1.F15F1_Lab_Lab_id = e2.F15F1_Lab_Lab_id)
                        WHERE e1.emp_id = :SELECT_EMP AND e2.lab_director = 'Y';
                UPDATE F15F1_APPROVER SET F15F1_EMP_EMP_ID = approver WHERE F15F1_RFE_RFE_ID = :P24_RFE_id;
            ELSIF curr_status = 140 THEN
                SELECT e2.emp_id INTO approver FROM F15F1_Emp e1 JOIN F15F1_Emp e2 ON (e1.F15F1_Lab_Lab_id = e2.F15F1_Lab_Lab_id)
                        WHERE e1.emp_id = :SELECT_EMP AND e2.chair_person = 'Y';
                UPDATE F15F1_APPROVER SET F15F1_EMP_EMP_ID = approver WHERE F15F1_RFE_RFE_ID = :P24_RFE_id;
            ELSIF curr_status = 103 THEN
                SELECT emp_id INTO approver FROM F15F1_EMP WHERE executive_director = 'Y';
                UPDATE F15F1_APPROVER SET F15F1_EMP_EMP_ID = approver WHERE F15F1_RFE_RFE_ID = :P24_RFE_id;
            ELSIF curr_status = 104 THEN
                DELETE FROM F15F1_APPROVER WHERE F15F1_RFE_RFE_ID = :P24_RFE_ID;
            END IF;
        END;

    -- REJECT_RFE
        UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 121, EXPLANATION = :P24_EXPLANATION,
            ALT_PROTECTIONS = :P24_ALT_PROTECTIONS, APPROVAL_REVIEW_DATE = :P24_APPROVAL_REVIEW_DATE
            WHERE RFE_ID = :P24_RFE_ID; 
            
        DELETE FROM F15F1_APPROVER WHERE F15F1_RFE_RFE_ID = :P24_RFE_ID;

    -- RETURN_RFE
        UPDATE F15F1_RFE SET F15F1_STATUS_STATUS = 101, EXPLANATION = :P24_EXPLANATION,
            ALT_PROTECTIONS = :P24_ALT_PROTECTIONS, APPROVAL_REVIEW_DATE = :P24_APPROVAL_REVIEW_DATE
            WHERE RFE_ID = :P24_RFE_ID; 
            
        DELETE FROM F15F1_APPROVER WHERE F15F1_RFE_RFE_ID = :P24_RFE_ID;

    -- UPDATE_HISTORY
        DECLARE
            curr_status NUMBER := 0;

        BEGIN
        SELECT F15F1_STATUS_STATUS INTO curr_status FROM F15F1_RFE WHERE
                RFE_ID = :P24_RFE_ID;
        INSERT INTO F15F1_HISTORY (HIS_DATE, F15F1_RFE_RFE_ID, F15F1_STATUS_STATUS, F15F1_EMP_EMP_ID)
            VALUES (SYSDATE(), :P24_RFE_ID, curr_status, :SELECT_EMP);
        END;

    -- ADD_COMMENT
        IF (:P24_ADD_COMMENTS IS NOT NULL) THEN
        INSERT INTO F15F1_COMMENT
        VALUES(1, :P24_RFE_ID, SYSDATE(), :P24_ADD_COMMENTS, :SELECT_EMP, SYSDATE(), :SELECT_EMP, 1, SYSDATE(), :SELECT_EMP);
        END IF;

    -- INSERT_TASK
        DECLARE
            task_list APEX_APPLICATION_GLOBAL.VC_ARR2;
            curr_task_id VARCHAR2(50);

        BEGIN
        IF(:P21_TASK IS NOT NULL) THEN
        task_list := APEX_UTIL.STRING_TO_TABLE(:P21_TASK);
            FOR i IN 1..task_list.COUNT LOOP
                SELECT TASK_ID INTO curr_task_id FROM F15F1_Task
                    WHERE TASK_ABBREVIATION = task_list(i);
                INSERT INTO F15F1_RFE_TASK
                (F15F1_RFE_RFE_ID, F15F1_TASK_TASK_ID)
                VALUES 
                (:P21_RFE_ID, curr_task_id);
            END LOOP;
        END IF;
        END;

    -- INSERT_CONTACTS
        DECLARE
            contact_list APEX_APPLICATION_GLOBAL.VC_ARR2;
            curr_contact_id VARCHAR2(50);

        BEGIN
        IF(:P21_CONTACT IS NOT NULL) THEN
        contact_list := APEX_UTIL.STRING_TO_TABLE(:P21_CONTACT);
            FOR i IN 1..contact_list.COUNT LOOP
                SELECT EMP_ID INTO curr_contact_id FROM F15F1_Emp
                    WHERE NAME = contact_list(i);
                INSERT INTO F15F1_CONTACT
                (EFFECTIVE_DATE, F15F1_Emp_EMP_ID, F15F1_RFE_RFE_ID, F15F1_ROLE_ROLE_CODE)
                VALUES 
                (SYSDATE(), curr_contact_id, :P21_RFE_ID, 100);
            END LOOP;
        END IF;
        END;

-- Page 29, "Edit RFE"
    -- SAVE_EDIT
        UPDATE F15F1_RFE 
            SET EXPLANATION = :P29_EXPLANATION,
            ALT_PROTECTIONS = :P29_ALT_PROTECTIONS, 
            APPROVAL_REVIEW_DATE = :P29_REVIEW_DATE
            WHERE RFE_ID = :P29_RFE_ID;

    -- SAVE_COMMENTS
        IF (:P29_ADD_COMMENTS IS NOT NULL) THEN
        INSERT INTO F15F1_COMMENT
        VALUES(1, :P29_RFE_ID, SYSDATE(), :P29_ADD_COMMENTS, :SELECT_EMP, SYSDATE(), :SELECT_EMP, 1, SYSDATE(), :SELECT_EMP);
        END IF;

    -- INSERT_TASKS
        DECLARE
            task_list APEX_APPLICATION_GLOBAL.VC_ARR2;
            curr_task_id VARCHAR2(50);

        BEGIN
        IF(:P29_TASK IS NOT NULL) THEN
        task_list := APEX_UTIL.STRING_TO_TABLE(:P29_TASK);
            FOR i IN 1..task_list.COUNT LOOP
                SELECT TASK_ID INTO curr_task_id FROM F15F1_Task
                    WHERE TASK_ABBREVIATION = task_list(i);
                INSERT INTO F15F1_RFE_TASK
                (F15F1_RFE_RFE_ID, F15F1_TASK_TASK_ID)
                VALUES 
                (:P29_RFE_ID, curr_task_id);
            END LOOP;
        END IF;
        END;

    -- INSERT_CONTACTS
        DECLARE
            contact_list APEX_APPLICATION_GLOBAL.VC_ARR2;
            curr_contact_id VARCHAR2(50);

        BEGIN
        IF(:P29_CONTACT IS NOT NULL) THEN
        contact_list := APEX_UTIL.STRING_TO_TABLE(:P29_CONTACT);
            FOR i IN 1..contact_list.COUNT LOOP
                SELECT EMP_ID INTO curr_contact_id FROM F15F1_Emp
                    WHERE NAME = contact_list(i);
                INSERT INTO F15F1_CONTACT
                (EFFECTIVE_DATE, F15F1_Emp_EMP_ID, F15F1_RFE_RFE_ID, F15F1_ROLE_ROLE_CODE)
                VALUES 
                (SYSDATE(), curr_contact_id, :P29_RFE_ID, 100);
            END LOOP;
        END IF;
        END;

-- Page 34, "Create Task"
    -- P34_INSERT_TASK
        INSERT INTO F15F1_TASK(EFFECTIVE_DATE, TASK_ABBREVIATION, TASK_DESCRIPTION)
        VALUES(:P34_EFFECTIVE_DATE, :P34_TASK_ABBREVIATION, :P34_TASK_DESCRIPTION);