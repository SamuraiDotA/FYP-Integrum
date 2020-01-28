CREATE TABLE `message_recipient` (
	`id` BIGSERIAL NOT NULL,
	`recipient_id` BIGINT NULL,
	`recipient_group_id` BIGINT NULL,
	`message_id` BIGINT NOT NULL,
	`is_read` BOOLEAN NOT NULL,
	CONSTRAINT ri_rg_mi UNIQUE (`recipient_id`, `recipient_group_id`, `message_id`) USING BTREE,
	PRIMARY KEY (`id`)
);
ALTER TABLE message_recipient ADD CONSTRAINT message_recipient_message
    FOREIGN KEY (message_id)
    REFERENCES message (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE message_recipient ADD CONSTRAINT message_recipient_user
    FOREIGN KEY (recipient_id)
    REFERENCES user_account (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE message_recipient ADD CONSTRAINT message_recipient_user_group
    FOREIGN KEY (recipient_group_id)
    REFERENCES user_group (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
