CREATE TABLE `message` (
	`id` BIGSERIAL NOT NULL,
	`subject` VARCHAR(60) NOT NULL DEFAULT '',
	`creator_id` BIGINT NOT NULL,
	`message` TEXT NOT NULL DEFAULT '',
	`create_date` DATE NOT NULL,
	`parent_message_id` BIGINT DEFAULT NULL,
	`expiry_date` DATE NOT NULL,
	`is_reminder` BOOLEAN NOT NULL,
	`next_remind_date` DATE DEFAULT NULL,
	`reminder_frequency_id` BIGINT DEFAULT NULL,
	PRIMARY KEY (`id`)
);
ALTER TABLE message ADD CONSTRAINT message_message
    FOREIGN KEY (parent_message_id)
    REFERENCES message (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE message ADD CONSTRAINT message_reminder_frequency
    FOREIGN KEY (reminder_frequency_id)
    REFERENCES reminder_frequency (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE message ADD CONSTRAINT message_user
    FOREIGN KEY (creator_id)
    REFERENCES user_account (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;