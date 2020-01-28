CREATE TABLE `commits` (
	`id` BIGSERIAL NOT NULL,
	`repository_id` BIGINT(50) NOT NULL DEFAULT '',
	`committer` BIGINT NOT NULL,
	`commit_msg` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
);
ALTER TABLE project_manager ADD CONSTRAINT commits_user_account
    FOREIGN KEY (committer)
    REFERENCES user_account (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;