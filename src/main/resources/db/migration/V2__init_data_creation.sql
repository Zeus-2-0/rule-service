insert into rulesdb.rule_category(rule_category_sk, rule_category_id, rule_category_name, rule_category_desc, created_date, updated_date) VALUES ('812162dd-264f-4756-a750-7dddd469c9b1', 'W317DVAVX8XQDMR', 'ACCOUNT', 'All rules associated with the account', sysdate(), sysdate());
insert into rulesdb.rule_category(rule_category_sk, rule_category_id, rule_category_name, rule_category_desc, created_date, updated_date) VALUES ('5f5390cb-6e87-4156-8f6d-8fdcbde1f62d', 'EU7MASBTMUBLV62', 'TRANSACTION', 'All rules associated with the transaction', sysdate(), sysdate());

insert into rulesdb.rule_type(rule_type_sk, rule_category_sk, rule_type_id, rule_type_name, rule_type_desc, created_date, updated_date) VALUES ('52c2a94c-6d03-4a38-9295-a86083576f67', '812162dd-264f-4756-a750-7dddd469c9b1', 'XCLHU15XQAYM14M', 'ACCOUNT_RULE', 'Account rule types', sysdate(), sysdate());
insert into rulesdb.rule_type(rule_type_sk, rule_category_sk, rule_type_id, rule_type_name, rule_type_desc, created_date, updated_date) VALUES ('a7f7a788-222c-4f86-a48c-57244439488e', '5f5390cb-6e87-4156-8f6d-8fdcbde1f62d', '3S7XXDMI3T6E0YM', 'TRANSACTION_DATA_VALIDATION', 'Rules to validate the data in the transaction', sysdate(), sysdate());
insert into rulesdb.rule_type(rule_type_sk, rule_category_sk, rule_type_id, rule_type_name, rule_type_desc, created_date, updated_date) VALUES ('8b19c352-b39b-4435-a983-4aaf00749b05', '5f5390cb-6e87-4156-8f6d-8fdcbde1f62d', 'WRLUYG6GYXVSNMG', 'BUSINESS_RULE', 'Business Rules to process the transaction', sysdate(), sysdate());

-- Account Rule Sets
insert into rulesdb.rule_set(rule_set_sk, rule_type_sk, rule_set_id, rule_set_name, rule_set_desc, active, created_date, updated_date) VALUES ('ab13ce56-5d0d-4e7f-ac14-46fe4008ae86', '52c2a94c-6d03-4a38-9295-a86083576f67','19XK4YKQOU7935V','ACCOUNT DEMOGRAPHIC', 'Rules to validate account demographics', true, sysdate(), sysdate());
insert into rulesdb.rule_set(rule_set_sk, rule_type_sk, rule_set_id, rule_set_name, rule_set_desc, active, created_date, updated_date) VALUES ('2c7fbb58-650b-4399-b5f4-50ac3b0aea98', '52c2a94c-6d03-4a38-9295-a86083576f67','CMD1FNG5Y6K90U3','ENROLLMENT_SPAN', 'Rules to validate enrollment spans', true, sysdate(), sysdate());

-- Transaction Rule Sets
-- Rule Type
-- TRANSACTION DATA VALIDATION
insert into rulesdb.rule_set(rule_set_sk, rule_type_sk, rule_set_id, rule_set_name, rule_set_desc, active, created_date, updated_date) VALUES ('097bf0a6-ac07-4573-ae42-8a986de677e3', 'a7f7a788-222c-4f86-a48c-57244439488e','NIYHVIJRZBYT9JQ','TRANSACTION DEMOGRAPHIC', 'Rules to validate transaction demographics', true, sysdate(), sysdate());
insert into rulesdb.rule_set(rule_set_sk, rule_type_sk, rule_set_id, rule_set_name, rule_set_desc, active, created_date, updated_date) VALUES ('0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'a7f7a788-222c-4f86-a48c-57244439488e','ADZ465QZ4VGYEQM','DATA INTEGRITY', 'Rules to validate effective date in the transaction', true, sysdate(), sysdate());
-- Rule Type
-- BUSINESS RULE
insert into rulesdb.rule_set(rule_set_sk, rule_type_sk, rule_set_id, rule_set_name, rule_set_desc, active, created_date, updated_date) VALUES ('3da9c776-7ed1-473a-a92b-737e5f456dba', '8b19c352-b39b-4435-a983-4aaf00749b05','9W0HJ1CCM7B2DDJ','RATE VALIDATION', 'Rules to validate transaction rates', true, sysdate(), sysdate());
insert into rulesdb.rule_set(rule_set_sk, rule_type_sk, rule_set_id, rule_set_name, rule_set_desc, active, created_date, updated_date) VALUES ('fba53e12-6622-4510-91d8-fee0dc721130', '8b19c352-b39b-4435-a983-4aaf00749b05','MQP5IPC6C6JK5E5','DATE VALIDATION', 'Rules to dates while processing the transaction', true, sysdate(), sysdate());

-- Account Rules
-- Demographic Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('12bb9131-db7b-489d-8068-575dce37f4b0', 'ab13ce56-5d0d-4e7f-ac14-46fe4008ae86', 'JL4SPBGRY6O9FJE', 'DATE_OF_BIRTH', 'Rule to validate members date of birth', true, true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('6ffa0310-5d3e-4af9-ad8f-2e8197e59442', 'ab13ce56-5d0d-4e7f-ac14-46fe4008ae86', '6BIWSQZO9T60F99', 'GENDER', 'Rule to validate members gender', true, true, sysdate(), sysdate());
-- Enrollment Span rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('8b39191c-a7b3-4562-9904-3dcf18b609c8', '2c7fbb58-650b-4399-b5f4-50ac3b0aea98', 'U2STMQEAIRE1X0Q', 'ES_OVERLAP', 'Rule to validate if enrollment spans overlap', true, false, sysdate(), sysdate());

-- Transaction Rules
-- Demographic Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('7a54f033-c17b-44cc-833a-9c619a9fdb9b', '097bf0a6-ac07-4573-ae42-8a986de677e3', 'AU3IUZ2FTSAFAV7', 'DATE_OF_BIRTH', 'Rule to validate members date of birth', true, true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('d7ce973f-65b6-483c-96ae-dc01a9436eef', '097bf0a6-ac07-4573-ae42-8a986de677e3', '84WNR9KAS23XKP3', 'GENDER', 'Rule to validate members gender', true, true, sysdate(), sysdate());

-- Data Integrity Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('d91f1ab9-35b8-4423-ab4f-acef3999f88d', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'GLPSKJXBMPXDVUI', 'EFFECTIVE_DATE_PRESENCE', 'Rule to validate if effective date is present', true, true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('7227bf1d-a0f4-4d5f-b0e2-87341a732d78', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'WS5VZS1G91913ZJ', 'END_DATE_PRESENCE', 'Rule to validate if end date is present', true, true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('c9c45355-c101-45a1-892f-0386d3f42e5b', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'HVRI6GGMVXAT2SV', 'SUBSCRIBER', 'Rule to validate the presence of a subscriber', true, false, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('4f77ab30-deb0-48f0-ac99-5d645df5c92a', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'J1BW1EI6UJGNQMY', 'EXCH_SUB_ID', 'Rule to validate the presence of exchange subscriber id', true, false, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('ce758215-cd57-4c14-9ac6-976a52346d33', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'NHS5WV07S2N3AJ9', 'EXCH_MEM_ID', 'Rule to validate the presence of exchange member id', true, true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('1dda1260-3e86-4c61-8b2c-5cd3cd3d2165', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'OLG1QV5NKWHFYLG', 'PREMIUM_AMT_TOTAL', 'Rule to validate the presence of total premium amount', true, false, sysdate(), sysdate());



-- Rate Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('a2d3c4b0-5d1a-47cf-abc1-fc5f73f9f18f', '3da9c776-7ed1-473a-a92b-737e5f456dba', '84MBZPRAOZC1NU6', 'PREM_TOT_VALIDATION', 'Rule to validate the premium amount total', true, true, sysdate(), sysdate());

-- Date Validation Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, member_level, created_date, updated_date) VALUES ('24865257-7d68-4fe9-b188-6a30092d0dac', 'fba53e12-6622-4510-91d8-fee0dc721130', 'CBU8HBC8P4FV5EA', 'MATCH_EFFECTIVE_DATE', 'Rule to validate if rate start dates match effective date', true, true, sysdate(), sysdate());


-- Rule - Transaction type mapping
-- DATE_OF_BIRTH Rule mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('3922e842-4163-41e3-bb12-83bb48ca114c', '7a54f033-c17b-44cc-833a-9c619a9fdb9b', 'ADD', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('a5db7f54-354b-437f-80b6-4129eb41e1f2', '7a54f033-c17b-44cc-833a-9c619a9fdb9b', 'CHANGE', sysdate(), sysdate());

-- GENDER Rule Mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('b702cae3-6e19-4493-9e56-91b471abc84a', 'd7ce973f-65b6-483c-96ae-dc01a9436eef', 'ADD', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('69f3f42f-50bc-42c6-93a0-28d1e983811a', 'd7ce973f-65b6-483c-96ae-dc01a9436eef', 'CHANGE', sysdate(), sysdate());

-- PREM_TOT_VALIDATION mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('4d0f2e16-bf16-4af1-90b2-6d0e95eec390', 'a2d3c4b0-5d1a-47cf-abc1-fc5f73f9f18f', 'ADD', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('e06f038a-7f47-418e-aecb-da150560ff60', 'a2d3c4b0-5d1a-47cf-abc1-fc5f73f9f18f', 'CHANGE', sysdate(), sysdate());


-- EFFECTIVE_DATE_PRESENCE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('d48b9f86-f852-4395-a4a2-96b850dd0f2f', 'd91f1ab9-35b8-4423-ab4f-acef3999f88d', 'ADD', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('6d092659-8f28-4106-b4ef-5d62d3d03f5b', 'd91f1ab9-35b8-4423-ab4f-acef3999f88d', 'CHANGE', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('9c9f71e8-8528-45e4-8e60-e6dd47b3abcd', 'd91f1ab9-35b8-4423-ab4f-acef3999f88d', 'REINSTATEMENT', sysdate(), sysdate());

-- END_DATE_PRESENCE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('80a65d45-8360-467c-9a27-e0c208d0669a', '7227bf1d-a0f4-4d5f-b0e2-87341a732d78', 'CANCELORTERM', sysdate(), sysdate());

-- MATCH_EFFECTIVE_DATE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('38699170-ef27-42f0-9cd6-64ae5bc843bf', '24865257-7d68-4fe9-b188-6a30092d0dac', 'ADD', sysdate(), sysdate());

-- SUBSCRIBER RULE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('8fbea563-0215-4dc7-aaa7-c6df425c27bd', 'c9c45355-c101-45a1-892f-0386d3f42e5b', 'ADD', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('6aff8fee-44b7-4237-a762-bfa3434af707', 'c9c45355-c101-45a1-892f-0386d3f42e5b', 'CANCELORTERM', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('9763893d-eec0-4bea-90e8-392824bcb352', 'c9c45355-c101-45a1-892f-0386d3f42e5b', 'REINSTATEMENT', sysdate(), sysdate());

-- EXCHANGE SUBSCRIBER ID RULE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('142f53b7-fc9f-47e8-8ba9-0bd345d38523', '4f77ab30-deb0-48f0-ac99-5d645df5c92a', 'ADD', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('4c22020c-82fc-4e1d-a1af-95a0da07547c', '4f77ab30-deb0-48f0-ac99-5d645df5c92a', 'CHANGE', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('668c4359-7836-4b6e-8e63-d5ead6e65346', '4f77ab30-deb0-48f0-ac99-5d645df5c92a', 'CANCELORTERM', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('fb16e19e-9390-48bd-9f8c-8638dc9f7d3d', '4f77ab30-deb0-48f0-ac99-5d645df5c92a', 'REINSTATEMENT', sysdate(), sysdate());

-- EXCHANGE MEMBER ID RULE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('605c22ef-907d-4176-8fc0-43dee2b83971', 'ce758215-cd57-4c14-9ac6-976a52346d33', 'ADD', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('fd44a2c7-088a-49ef-bf4a-6f4de8cb99ea', 'ce758215-cd57-4c14-9ac6-976a52346d33', 'CHANGE', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('c21225ea-d22f-4a5f-9155-e1cffd94c0ac', 'ce758215-cd57-4c14-9ac6-976a52346d33', 'CANCELORTERM', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('720e9e4f-7a2a-47ac-9d1a-9f5ae643c4ab', 'ce758215-cd57-4c14-9ac6-976a52346d33', 'REINSTATEMENT', sysdate(), sysdate());

-- PREMIUM TOTAL RULE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('af9be54d-b32b-4971-b75b-949a0f6c6725', '1dda1260-3e86-4c61-8b2c-5cd3cd3d2165', 'ADD', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('911e64bb-f04d-4855-ab7b-6466880602b9', '1dda1260-3e86-4c61-8b2c-5cd3cd3d2165', 'CHANGE', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('5cb21104-7f9c-4b63-886e-cf3989065f14', '1dda1260-3e86-4c61-8b2c-5cd3cd3d2165', 'REINSTATEMENT', sysdate(), sysdate());