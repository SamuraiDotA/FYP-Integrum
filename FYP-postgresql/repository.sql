CREATE TABLE `repository` (
	`id` BIGSERIAL NOT NULL,
	`repository_name` VARCHAR(50) NOT NULL DEFAULT '',
	`project_id` BIGINT NOT NULL,
	`forks` BIGINT NULL,
	PRIMARY KEY (`id`)
);
ALTER TABLE task ADD CONSTRAINT repository_project
    FOREIGN KEY (project_id)
    REFERENCES project (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;