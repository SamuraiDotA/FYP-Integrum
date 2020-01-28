CREATE TABLE `reminder_frequency` (
	`id` SERIAL NOT NULL,
	`title` VARCHAR(60) NOT NULL DEFAULT '',
	`frequency` BOOLEAN NOT NULL,
	`is_active` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);