CREATE TABLE `user_group` (
	`id` BIGSERIAL NOT NULL,
	`user_account_id` BIGINT NOT NULL,
	`group_id` BIGINT NOT NULL,
	`create_date` DATE NOT NULL,
	`is_active` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);
ALTER TABLE user_group ADD CONSTRAINT user_group_group
    FOREIGN KEY (group_id)
    REFERENCES group (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE user_group ADD CONSTRAINT user_group_user
    FOREIGN KEY (user_id)
    REFERENCES _accountuser (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;