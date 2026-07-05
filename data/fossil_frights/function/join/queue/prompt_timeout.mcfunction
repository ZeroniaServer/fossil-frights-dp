tellraw @s [{"text":"⚠ ","color":"red"},{"text":"You were AFK for over 1 minute. Proceeding to the next queued player.","color":"red"}]
scoreboard players set @s ff_queue_prompt_time 0
scoreboard players set @s ff_queue_start 0
scoreboard players set @s ff_queue_start_token 0
function fossil_frights:join/queue/remove_player
