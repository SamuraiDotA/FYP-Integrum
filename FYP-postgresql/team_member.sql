CREATE TABLE `team_member` (
	`id` BIGSERIAL NOT NULL,
	`team_id` BIGINT NOT NULL,
	`employee_id` BIGINT NOT NULL,
	`role_id` BIGINT NOT NULL,
	CONSTRAINT team_member_ak_1 UNIQUE (team_id, employee_id) NOT DEFERRABLE  INITIALLY IMMEDIATE,
	PRIMARY KEY (`id`)
);
ALTER TABLE team_member ADD CONSTRAINT team_member_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE team_member ADD CONSTRAINT team_member_role
    FOREIGN KEY (role_id)
    REFERENCES role (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE team_member ADD CONSTRAINT team_member_team
    FOREIGN KEY (team_id)
    REFERENCES team (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;