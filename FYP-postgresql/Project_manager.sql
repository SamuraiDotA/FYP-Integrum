CREATE TABLE `Project_manager` (
	`id` BIGSERIAL NOT NULL,
	`user_account_id` BIGINT NOT NULL,
	`project_id` INT NOT NULL,
	`employee_id` BIGINT NOT NULL,
	CONSTRAINT project_manager_ak_1 UNIQUE (project_id, user_account_id, employee_id) NOT DEFERRABLE  INITIALLY IMMEDIATE,
	PRIMARY KEY (`id`)
);
ALTER TABLE project_manager ADD CONSTRAINT project_manager_project
    FOREIGN KEY (project_id)
    REFERENCES project (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE project_manager ADD CONSTRAINT project_manager_user_account
    FOREIGN KEY (user_account_id)
    REFERENCES user_account (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;