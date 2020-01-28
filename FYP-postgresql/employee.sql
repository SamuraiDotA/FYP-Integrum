CREATE TABLE `employee` (
	`id` BIGSERIAL NOT NULL,
	`employee_name` VARCHAR(255) NOT NULL,
	'employee_code' varchar(128)  NOT NULL,
	`user_account_id` BIGINT NOT NULL,
	CONSTRAINT employee_ak_1 UNIQUE (employee_code) NOT DEFERRABLE  INITIALLY IMMEDIATE,
	PRIMARY KEY (`id`)
);
ALTER TABLE employee ADD CONSTRAINT employee_user_account
    FOREIGN KEY (user_account_id)
    REFERENCES user_account (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;