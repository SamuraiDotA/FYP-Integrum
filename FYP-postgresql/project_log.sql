CREATE TABLE `project_log` (
	`id` BIGSERIAL NOT NULL,
	`log_time` TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
	`project_id` BIGINT NOT NULL,
	PRIMARY KEY (`id`)
);
ALTER TABLE task ADD CONSTRAINT project_log_project
    FOREIGN KEY (project_id)
    REFERENCES project (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;