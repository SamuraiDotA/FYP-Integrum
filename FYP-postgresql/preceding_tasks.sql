CREATE TABLE `preceding_tasks` (
	`id` BIGSERIAL NOT NULL,
	`preceding_task_id` BIGINT NOT NULL,
	`task_id` BIGINT NOT NULL,
	CONSTRAINT preceding_task_ak_1 UNIQUE (task_id, preceding_task_id) NOT DEFERRABLE  INITIALLY IMMEDIATE,
	PRIMARY KEY (`id`)
);
ALTER TABLE preceding_tasks ADD CONSTRAINT preceding_task_task1
    FOREIGN KEY (task_id)
    REFERENCES tasks (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE preceding_task ADD CONSTRAINT preceding_task_task2
    FOREIGN KEY (preceding_task_id)
    REFERENCES tasks (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;