CREATE TABLE `employee_tasks_history` (
	`id` SERIAL NOT NULL,
	`all_previous_tasks` BIGINT DEFAULT '',
	`employee_id` BIGINT NOT NULL,
	PRIMARY KEY (`id`)
);
ALTER TABLE team_member ADD CONSTRAINT employee_task_history_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;