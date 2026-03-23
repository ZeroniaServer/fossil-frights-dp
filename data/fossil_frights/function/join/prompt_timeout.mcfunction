tellraw @s {"text":"You were afk for over 1 minute, proceeding to next queued player","color":"red"}
scoreboard players set @s ff_queue_prompt_time 0
scoreboard players set @s ff_queue_start 0
scoreboard players set @s ff_queue_start_token 0
function fossil_frights:join/remove_player_from_queue
