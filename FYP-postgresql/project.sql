CREATE TABLE `project` (
	`id` BIGSERIAL NOT NULL,
	`project_name` VARCHAR(100) NOT NULL DEFAULT NULL,
	`planned_start_date` DATE NOT NULL,
	`planned_end_date` DATE NOT NULL,
	`actual_start_date` DATE NULL,
	`actual_end_date` DATE NULL,
	`project_description` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);