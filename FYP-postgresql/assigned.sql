CREATE TABLE `assigned` (
	`id` BIGSERIAL NOT NULL,
	`task_id` BIGINT NOT NULL,
	`employee_id` BIGINT NOT NULL,
	`role_id` BIGINT NOT NULL,
	CONSTRAINT assigned_ak_1 UNIQUE (task_id, employee_id, role_id) NOT DEFERRABLE  INITIALLY IMMEDIATE,
	PRIMARY KEY (`id`)
);
ALTER TABLE assigned ADD CONSTRAINT assigned_task
    FOREIGN KEY (task_id)
    REFERENCES tasks (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE assigned ADD CONSTRAINT assigned_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE assigned ADD CONSTRAINT assigned_role
    FOREIGN KEY (role_id)
    REFERENCES role (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;