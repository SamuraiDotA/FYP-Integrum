CREATE TABLE `proceding_sub_tasks` (
	`id` BIGSERIAL NOT NULL,
	`sub_task_id` BIGINT NOT NULL,
	`preceding_sub_task_id` BIGINT NOT NULL,
	CONSTRAINT preceding_activity_ak_1 UNIQUE (sub_task_id, preceding_task_id) NOT DEFERRABLE  INITIALLY IMMEDIATE,
	PRIMARY KEY (`id`)
);
ALTER TABLE preceding_sub_tasks ADD CONSTRAINT preceding_sub_task_ak1
    FOREIGN KEY (sub_task_id)
    REFERENCES sub_tasks (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
ALTER TABLE preceding_sub_tasks ADD CONSTRAINT preceding_sub_task_ak2
    FOREIGN KEY (preceding_sub_task_id)
    REFERENCES sub_tasks (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;