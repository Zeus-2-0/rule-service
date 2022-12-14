insert into rulesdb.rule_category(rule_category_sk, rule_category_id, rule_category_name, rule_category_desc, rule_type, created_date, updated_date) VALUES ('812162dd-264f-4756-a750-7dddd469c9b1', 'W317DVAVX8XQDMR', 'ACCOUNT', 'All rules associated with the account', 'ACCOUNT_RULE', sysdate(), sysdate());
insert into rulesdb.rule_category(rule_category_sk, rule_category_id, rule_category_name, rule_category_desc, rule_type, created_date, updated_date) VALUES ('5f5390cb-6e87-4156-8f6d-8fdcbde1f62d', 'EU7MASBTMUBLV62', 'TRANSACTION', 'All rules associated with the transaction', 'BUSINESS_RULE', sysdate(), sysdate());

-- Account Rule Sets
insert into rulesdb.rule_set(rule_set_sk, rule_category_sk, rule_set_id, rule_set_name, rule_set_desc, active, rule_set_impl_name, created_date, updated_date) VALUES ('ab13ce56-5d0d-4e7f-ac14-46fe4008ae86', '812162dd-264f-4756-a750-7dddd469c9b1','19XK4YKQOU7935V','ACCOUNT DEMOGRAPHIC', 'Rules to validate account demographics', true, 'demographicRuleSet', sysdate(), sysdate());
insert into rulesdb.rule_set(rule_set_sk, rule_category_sk, rule_set_id, rule_set_name, rule_set_desc, active, rule_set_impl_name, created_date, updated_date) VALUES ('2c7fbb58-650b-4399-b5f4-50ac3b0aea98', '812162dd-264f-4756-a750-7dddd469c9b1','CMD1FNG5Y6K90U3','ENROLLMENT_SPAN', 'Rules to validate enrollment spans', true, 'enrollmentSpanRuleSet', sysdate(), sysdate());

-- Transaction Rule Sets
insert into rulesdb.rule_set(rule_set_sk, rule_category_sk, rule_set_id, rule_set_name, rule_set_desc, active, rule_set_impl_name, created_date, updated_date) VALUES ('097bf0a6-ac07-4573-ae42-8a986de677e3', '5f5390cb-6e87-4156-8f6d-8fdcbde1f62d','NIYHVIJRZBYT9JQ','TRANSACTION DEMOGRAPHIC', 'Rules to validate transaction demographics', true, 'demographicRuleSet', sysdate(), sysdate());
insert into rulesdb.rule_set(rule_set_sk, rule_category_sk, rule_set_id, rule_set_name, rule_set_desc, active, rule_set_impl_name, created_date, updated_date) VALUES ('3da9c776-7ed1-473a-a92b-737e5f456dba', '5f5390cb-6e87-4156-8f6d-8fdcbde1f62d','9W0HJ1CCM7B2DDJ','RATE VALIDATION', 'Rules to validate transaction rates', true, 'rateRuleSet', sysdate(), sysdate());
insert into rulesdb.rule_set(rule_set_sk, rule_category_sk, rule_set_id, rule_set_name, rule_set_desc, active, rule_set_impl_name, created_date, updated_date) VALUES ('0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', '5f5390cb-6e87-4156-8f6d-8fdcbde1f62d','ADZ465QZ4VGYEQM','EFFECTIVE DATE VALIDATION', 'Rules to validate effective date in the transaction', true, 'effectiveDateRuleSet', sysdate(), sysdate());

-- Account Rules
-- Demographic Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('12bb9131-db7b-489d-8068-575dce37f4b0', 'ab13ce56-5d0d-4e7f-ac14-46fe4008ae86', 'JL4SPBGRY6O9FJE', 'DATE_OF_BIRTH', 'Rule to validate members date of birth', true, 'dateOfBirthRule', true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('6ffa0310-5d3e-4af9-ad8f-2e8197e59442', 'ab13ce56-5d0d-4e7f-ac14-46fe4008ae86', '6BIWSQZO9T60F99', 'GENDER', 'Rule to validate members gender', true, 'genderRule', true, sysdate(), sysdate());
-- Enrollment Span rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('8b39191c-a7b3-4562-9904-3dcf18b609c8', '2c7fbb58-650b-4399-b5f4-50ac3b0aea98', 'U2STMQEAIRE1X0Q', 'ES_OVERLAP', 'Rule to validate if enrollment spans overlap', true, 'enrollmentSpanOverlapRule', false, sysdate(), sysdate());

-- Transaction Rules
-- Demographic Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('7a54f033-c17b-44cc-833a-9c619a9fdb9b', '097bf0a6-ac07-4573-ae42-8a986de677e3', 'AU3IUZ2FTSAFAV7', 'DATE_OF_BIRTH', 'Rule to validate members date of birth', true, 'dateOfBirthRule', true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('d7ce973f-65b6-483c-96ae-dc01a9436eef', '097bf0a6-ac07-4573-ae42-8a986de677e3', '84WNR9KAS23XKP3', 'GENDER', 'Rule to validate members gender', true, 'genderRule', true, sysdate(), sysdate());

-- Rate Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('a2d3c4b0-5d1a-47cf-abc1-fc5f73f9f18f', '3da9c776-7ed1-473a-a92b-737e5f456dba', '84MBZPRAOZC1NU6', 'PREM_TOT_VALIDATION', 'Rule to validate the premium amount total', true, 'premiumTotalRule', true, sysdate(), sysdate());

-- Effective Date Rules
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('d91f1ab9-35b8-4423-ab4f-acef3999f88d', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'GLPSKJXBMPXDVUI', 'EFFECTIVE_DATE_PRESENCE', 'Rule to validate if effective date is present', true, 'effectiveDatePresentRule', true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('7227bf1d-a0f4-4d5f-b0e2-87341a732d78', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'WS5VZS1G91913ZJ', 'END_DATE_PRESENCE', 'Rule to validate if end date is present', true, 'endDatePresentRule', true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('24865257-7d68-4fe9-b188-6a30092d0dac', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'CBU8HBC8P4FV5EA', 'MATCH_EFFECTIVE_DATE', 'Rule to validate if rate start dates match effective date', true, 'matchEffectiveDateRule', true, sysdate(), sysdate());
insert into rulesdb.rule(rule_sk, rule_set_sk, rule_id, rule_name, rule_desc, active, rule_impl_name, member_level, created_date, updated_date) VALUES ('e302a46c-ec4d-48af-8ac9-a21adc53e388', '0bb4aba2-1cd6-48aa-a6ff-6b890da35c63', 'SDSKRO9E6E6UPFB', 'MATCH_RATE_START_DATE', 'Rule to validate if rate start dates of individual rates match', true, 'matchRateStartDateRule', true, sysdate(), sysdate());


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

-- END_DATE_PRESENCE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('24f81860-cf67-4cf0-bcb7-381c6caa4f72', '7227bf1d-a0f4-4d5f-b0e2-87341a732d78', 'CANCELORTERM', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('80a65d45-8360-467c-9a27-e0c208d0669a', '7227bf1d-a0f4-4d5f-b0e2-87341a732d78', 'CANCEL', sysdate(), sysdate());
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('93e26ccd-e89a-4f35-809a-55feae28bf26', '7227bf1d-a0f4-4d5f-b0e2-87341a732d78', 'TERM', sysdate(), sysdate());

-- MATCH_EFFECTIVE_DATE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('38699170-ef27-42f0-9cd6-64ae5bc843bf', '24865257-7d68-4fe9-b188-6a30092d0dac', 'ADD', sysdate(), sysdate());

-- MATCH_RATE_START_DATE mapping
insert into rulesdb.rule_transaction(rule_transaction_sk, rule_sk, transaction_type_code, created_date, updated_date) VALUES ('83571fe6-2055-4260-a1f3-70ee54ce8b9d', 'e302a46c-ec4d-48af-8ac9-a21adc53e388', 'CHANGE', sysdate(), sysdate());
