function fossil_frights:tasks/hard/snowball_fight/cleanup
scoreboard players set $snowball_fight_hits ff_task_state 0
scoreboard players reset @a ff_actionbar_manager.slot.snowball_fight
scoreboard players reset @a ff_snowball_fight_count
advancement revoke @a only fossil_frights:tasks/hard/snowball_fight/click
advancement revoke @a only fossil_frights:tasks/hard/snowball_fight/hit
