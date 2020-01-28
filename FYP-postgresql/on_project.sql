CREATE TABLE `on project` (
	`id` BIGSERIAL NOT NULL,
	`project_id` INT NOT NULL,
	`client_partner_id` INT NOT NULL,
	`project_start_date` DATE NOT NULL,
	`project_end_date` DATE NULL,
	`is_client` BOOLEAN NOT NULL,
	`is_partner` BOOLEAN NOT NULL,
	'description' text  NOT NULL,
	PRIMARY KEY (`id`)
);
ALTER TABLE on_project ADD CONSTRAINT on_project_client_partner
    FOREIGN KEY (client_partner_id)
    REFERENCES client_partner (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE on_project ADD CONSTRAINT on_project_project
    FOREIGN KEY (project_id)
    REFERENCES project (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;