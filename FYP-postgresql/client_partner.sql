CREATE TABLE `client_partner` (
	`id` BIGSERIAL NOT NULL,
	`client_partner_name` VARCHAR(255) NOT NULL DEFAULT '',
	`clinet_partner_phone` VARCHAR(15) NULL DEFAULT NULL,
	`client_partner_details` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
);