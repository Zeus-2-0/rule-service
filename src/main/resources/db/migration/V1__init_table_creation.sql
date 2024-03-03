DROP TABLE IF EXISTS `rulesdb`.`rule_category`;
DROP TABLE IF EXISTS `rulesdb`.`rule_type`;
DROP TABLE IF EXISTS `rulesdb`.`rule_set`;
DROP TABLE IF EXISTS `rulesdb`.`rule`;
DROP TABLE IF EXISTS `rulesdb`.`rule_transaction`;
CREATE TABLE IF NOT EXISTS `rulesdb`.`rule_category` (
    `rule_category_sk` VARCHAR(36) NOT NULL COMMENT 'The primary key of the table',
    `rule_category_id` VARCHAR(50) NOT NULL COMMENT 'The unique Id of the category',
    `rule_category_name` VARCHAR(100) NOT NULL COMMENT 'The name of the category',
    `rule_category_desc` VARCHAR(200) NOT NULL COMMENT 'A short description of the category',
    `created_date` DATETIME NULL COMMENT 'Date when the record was created',
    `updated_date` DATETIME NULL COMMENT 'Date when the record was updated',
    PRIMARY KEY (`rule_category_sk`))
    ENGINE = InnoDB
    COMMENT = 'This table contains the list of all the rule categories like “ACCOUNT”, “TRANSACTION”, “FILE” etc';
CREATE TABLE IF NOT EXISTS `rulesdb`.`rule_type` (
    `rule_type_sk` VARCHAR(36) NOT NULL COMMENT 'The primary key of the table',
    `rule_type_id` VARCHAR(50) NOT NULL COMMENT 'The unique Id of the rule type',
    `rule_type_name` VARCHAR(100) NOT NULL COMMENT 'The name of the rule type',
    `rule_type_desc` VARCHAR(200) NOT NULL COMMENT 'A short description of the rule type',
    `rule_category_sk` VARCHAR(36) NOT NULL COMMENT 'The rule category that the rule type belongs',
    `created_date` DATETIME NULL COMMENT 'Date when the record was created',
    `updated_date` DATETIME NULL COMMENT 'Date when the record was updated',
    PRIMARY KEY (`rule_type_sk`),
    INDEX `rule_category_fk_idx` (`rule_category_sk` ASC) VISIBLE,
    CONSTRAINT `rule_category_fk`
    FOREIGN KEY (`rule_category_sk`)
    REFERENCES `rulesdb`.`rule_category` (`rule_category_sk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB
    COMMENT = 'This table contains the list of all the rule types like “Pre validation rule” and “Business Rules” within the “TRANSACTION” category';
CREATE TABLE IF NOT EXISTS `rulesdb`.`rule_set` (
    `rule_set_sk` VARCHAR(36) NOT NULL COMMENT 'The primary key of the rule set table',
    `rule_type_sk` VARCHAR(36) NOT NULL COMMENT 'The rule type that the rule set belongs',
    `rule_set_id` VARCHAR(50) NOT NULL COMMENT 'Unique id associated with the rule set',
    `rule_set_name` VARCHAR(100) NOT NULL COMMENT 'The name of the rule set',
    `rule_set_desc` VARCHAR(200) NOT NULL COMMENT 'A short description of the ruleset',
    `active` BOOLEAN NOT NULL COMMENT 'Indicates if the rule set is actively in use or not',
    `created_date` DATETIME NULL COMMENT 'Date when the record was created',
    `updated_date` DATETIME NULL COMMENT 'Date when the record was updated',
    PRIMARY KEY (`rule_set_sk`),
    INDEX `rule_type_fk_idx` (`rule_type_sk` ASC) VISIBLE,
    CONSTRAINT `rule_type_fk`
    FOREIGN KEY (`rule_type_sk`)
    REFERENCES `rulesdb`.`rule_type` (`rule_type_sk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB
    COMMENT = 'The rule sets that belong to a category';
CREATE TABLE IF NOT EXISTS `rulesdb`.`rule` (
    `rule_sk` VARCHAR(36) NOT NULL COMMENT 'Primary key of the table',
    `rule_set_sk` VARCHAR(36) NOT NULL COMMENT 'Ruleset that the rule is associated',
    `rule_id` VARCHAR(50) NOT NULL COMMENT 'A unique id assigned to the rule',
    `rule_name` VARCHAR(100) NOT NULL COMMENT 'The name of the rule',
    `rule_desc` VARCHAR(200) NOT NULL COMMENT 'A short description of the rule',
    `active` BOOLEAN NOT NULL COMMENT 'Indicates if the rule is active',
    `member_level` BOOLEAN NOT NULL COMMENT 'Indicates if the rule is a member level rule',
    `created_date` DATETIME NULL COMMENT 'Date when the record is created',
    `updated_date` DATETIME NULL COMMENT 'Date when the record was updated',
    PRIMARY KEY (`rule_sk`),
    INDEX `rule_set_fk_idx` (`rule_set_sk` ASC) VISIBLE,
    CONSTRAINT `rule_set_fk`
    FOREIGN KEY (`rule_set_sk`)
    REFERENCES `rulesdb`.`rule_set` (`rule_set_sk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB
    COMMENT = 'This table contains the list of all the rules that are associated with a rule set.';
CREATE TABLE IF NOT EXISTS `rulesdb`.`rule_transaction` (
    `rule_transaction_sk` VARCHAR(36) NOT NULL COMMENT 'Primary key of the table',
    `rule_sk` VARCHAR(36) NOT NULL COMMENT 'The foreign key for the rule',
    `transaction_type_code` VARCHAR(50) NOT NULL COMMENT 'The transaction type associated with the rule',
    `created_date` DATETIME NULL COMMENT 'Date when the record was created',
    `updated_date` DATETIME NULL COMMENT 'Date when the record was updated',
    PRIMARY KEY (`rule_transaction_sk`),
    INDEX `rule_fk_idx` (`rule_sk` ASC) VISIBLE,
    CONSTRAINT `rule_fk`
    FOREIGN KEY (`rule_sk`)
    REFERENCES `rulesdb`.`rule` (`rule_sk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB
    COMMENT = 'Mapping between the rule and transaction type';