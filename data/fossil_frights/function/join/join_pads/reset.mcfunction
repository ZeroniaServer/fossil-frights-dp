kill @e[type=mannequin,tag=ff_queue_mannequin]
scoreboard players set @a ff_join_cooldown 0
scoreboard players set @a ff_queue_order 0
scoreboard players set @a ff_queue_start 0
scoreboard players set @a ff_queue_start_token 0
scoreboard players set @a ff_queue_prompt_time 0
scoreboard players set @a ff_queue_prompt_display 0
tag @a remove ff_in_queue
tag @a remove ff_join_spectator_zone
function fossil_frights:join/join_pads/clear
function fossil_frights:join/join_pads/active_setup
