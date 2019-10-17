INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (1, 'DE', 'Germany');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (2, 'GB', 'UK');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (3, 'USA', 'USA');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (4, 'IN', 'India');

INSERT INTO USER(ID, FIRST_NAME, LAST_NAME) VALUES (1, 'Christian', 'Blaim');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME) VALUES (2, 'Claudia', 'Santacroce');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME) VALUES (3, 'Reinhold', 'Bauer');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME) VALUES (4, 'Thomas', 'Motsch');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME) VALUES (5, 'Viktor', 'Mueller');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME) VALUES (6, 'Stefan', 'Von Fumetti');

INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (1, 'christian.blaim@allianz.de', '498938006445', 1);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (2, 'alexander.heinrich@allianz.de', '33187395043', 2);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (3, 'reinhold.bauer@allianz.de', '497116634791', 3);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (4, 'thomas.motsch@allianz.de', '497116632553', 4);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (5, 'viktor.mueller@allianz.de', '497116633103', 5);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (6, 'stefan.von.fumettai@allianz.de', '4989380010027', 6);

INSERT INTO ORGANIZATION(ID, NAME, DESCRIPTION, COUNTRY_ID) VALUES (1, 'Allianz Technology India', 'Az India', 4);
INSERT INTO ORGANIZATION(ID, NAME, DESCRIPTION, COUNTRY_ID) VALUES (2, 'Allianz Technology Germany', 'Az Germany', 1);

INSERT INTO OPERATING_ENTITY(ID, NAME, ORGANISATION_ID, COUNTRY_ID) VALUES (1, 'Az Deu', 2, 1);

INSERT INTO SERVICE_OFFERING(ID, NAME, DESCRIPTION, BUSINESS_WEIGHTAGE, OPERATING_ENTITY_ID) VALUES (1, 'AD&M', 'Application Development and Maintenance', 40, 1);

INSERT INTO PORTFOLIO(ID, NAME, DESCRIPTION, SOLUTION, PORTFOLIO_MODEL, BUSINESS_WEIGHTAGE, SERVICE_OFFERING_ID) VALUES (1, 'ABBS', 'ABBS for Deu', 'ABS', 'Staff Augumentation', 70, 1);

INSERT INTO PROJECT(ID, NAME, DEPARTMENT, HEAD_COUNT, BUSINESS_WEIGHTAGE, DEVELOPMENT_METHODOLOGY, DESCRIPTION, SERVIVE_OWNER_IT_ID, SERVIVE_MANAGER_ID, PORTFOLIO_ID) VALUES (1, 'Kraft', 'CP05PAC', 10, 60, 'Scrum', 'Kraft team enhances the functionality of ABS to accommodate new motor-products, as well as maintain existing products. It is a staff augmentation project, where team works on the code developed by Allianz Deutschland team.Team is not involved in any of the Business requirement and Software Design discussions as project decisions like design, infrastructure, execution methodology, training and resource hiring are defined by Deutschland.', 1, 2, 1);
INSERT INTO PROJECT(ID, NAME, DEPARTMENT, HEAD_COUNT, BUSINESS_WEIGHTAGE, DEVELOPMENT_METHODOLOGY, DESCRIPTION, SERVIVE_OWNER_IT_ID, SERVIVE_MANAGER_ID, PORTFOLIO_ID) VALUES (2, 'Life', 'CP05PLM', 7, 30, 'Scrum', 'Leben team enhances the functionality of ABS to accommodate new life insurance products, as well as maintain existing products. It is a staff augmentation project, where team works on the code developed by Allianz Deutschland team.Team is not involved in any of the Business requirement and Software Design discussions as project decisions like design, infrastructure, execution methodology, training and resource hiring are defined by Deutschland.', 3, 4, 1);
INSERT INTO PROJECT(ID, NAME, DEPARTMENT, HEAD_COUNT, BUSINESS_WEIGHTAGE, DEVELOPMENT_METHODOLOGY, DESCRIPTION, SERVIVE_OWNER_IT_ID, SERVIVE_MANAGER_ID, PORTFOLIO_ID) VALUES (3, 'CFS', 'CP05IOWC1', 1, 10, 'Waterfall', 'CFS team enhances the JUnit coverage and functionality of ABS to accommodate new products, as well as maintain existing products. It is a staff augmentation project, where team works on the code developed by Allianz Deutschland team.Team is not involved in any of the Business requirement and Software Design discussions as project decisions like design, infrastructure, execution methodology, training and resource hiring are defined by Deutschland.', 5, 2, 1);
INSERT INTO PROJECT(ID, NAME, DEPARTMENT, HEAD_COUNT, BUSINESS_WEIGHTAGE, DEVELOPMENT_METHODOLOGY, DESCRIPTION, SERVIVE_OWNER_IT_ID, SERVIVE_MANAGER_ID, PORTFOLIO_ID) VALUES (4, 'PMS', 'CP05PMSP2', 2, 20, 'Scrum', 'Program management Migrations and Services recently started under ABBS portfolio.  PMS deals with batch support in the area of Contract (Policy processing ) and Claims (Post processing) of ABS Deutschland.Team has started delivering from India which focuses in the area of ABS policies and claims batch development.', 6, 2, 1);

INSERT INTO KPI_MASTER(ID, NAME, DESCRIPTION) VALUES (1, 'OnTimeDeliveryIndex', 'Delivering within the release plan');
INSERT INTO KPI_MASTER(ID, NAME, DESCRIPTION) VALUES (2, 'Defect Count', 'Delivering defects within the expected quantity');
INSERT INTO KPI_MASTER(ID, NAME, DESCRIPTION) VALUES (3, 'JUNIT Coverage', 'JUNIT Coverage 75%');

INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (1, 90, 70, 1, 80, 1);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (2, 10, 8, 2, 10, 1);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (3, 80, 70, 3, 10, 1);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (4, 90, 70, 1, 70, 2);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (5, 75, 70, 3, 100, 2);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (6, 90, 70, 1, 60, 3);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (7, 10, 8, 2, 40, 3);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (8, 90, 70, 1, 80, 4);

INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (1, 70, 'Network outage', CURDATE(), 1);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (2, 6, 'Low defect count Network outage', '2019-07-01 17:18:55', 2);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (3, 60, 'Less coverage Network outage ', '2019-08-01 17:18:55', 3);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (4, 70, 'Network outage', '2019-10-01 17:18:55', 4);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (5, 6, 'Network outage', CURDATE(), 5);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (6, 72, 'Workspace Issue', CURDATE(), 6);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (7, 70, 'Network outage', CURDATE(), 7);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (8, 6, 'Network outage', CURDATE(), 8);
