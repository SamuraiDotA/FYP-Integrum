CREATE TABLE `group` (
	`id` BIGSERIAL NOT NULL,
	`name` VARCHAR(20) NOT NULL DEFAULT '',
	`create_date` DATE NOT NULL,
	`is_active` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);