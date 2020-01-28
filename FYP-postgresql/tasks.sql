CREATE TABLE `tasks` (
	`id` BIGSERIAL NOT NULL,
	`task_name` VARCHAR(255) NOT NULL DEFAULT NULL,
	`project_id` INT NOT NULL,
	`priority` INT NOT NULL ,
	`task_description` TEXT NULL DEFAULT '',
	`planned_start_date` DATE NOT NULL,
	`planned_end_date` DATE NOT NULL,
	`actual_start_date` DATE NULL,
	`actual_end_date` DATE NULL,
	PRIMARY KEY (`id`)
);
ALTER TABLE task ADD CONSTRAINT task_project
    FOREIGN KEY (project_id)
    REFERENCES project (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;