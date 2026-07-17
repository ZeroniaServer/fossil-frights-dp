tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.afk"}]}
scoreboard players set @s ff_queue_prompt_time 0
scoreboard players set @s ff_queue_start 0
scoreboard players set @s ff_queue_start_token 0
function fossil_frights:join/queue/remove_player
