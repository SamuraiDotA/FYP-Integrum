CREATE TABLE `sub_tasks` (
	`id` BIGSERIAL NOT NULL,
	`sub_task_name` VARCHAR(50) NOT NULL,
	`task_id` BIGINT NOT NULL,
	`priority` INT(5) DEFAULT '0',
	`sub_task_descripion` TEXT DEFAULT '',
	`planned_start_date` DATE DEFAULT NULL,
	`planned_end_date` DATE DEFAULT NULL,
	`actual_start_date` DATE DEFAULT NULL,
	`actual_end_date` DATE DEFAULT NULL,
	PRIMARY KEY (`id`)
);
ALTER TABLE sub_tasks ADD CONSTRAINT sub_task
    FOREIGN KEY (task_id)
    REFERENCES tasks (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;