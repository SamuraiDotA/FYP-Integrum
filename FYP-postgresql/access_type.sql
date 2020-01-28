CREATE TABLE `access_type` (
	`id` BIGSERIAL NOT NULL,
	`account_type` INT NOT NULL,
	`account_access_type` VARCHAR(20),
	`user_account_id` BIGINT,
	PRIMARY KEY (`id`)
);
ALTER TABLE account_type ADD CONSTRAINT access_type_user_account
    FOREIGN KEY (user_account_id)
    REFERENCES user_account (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;