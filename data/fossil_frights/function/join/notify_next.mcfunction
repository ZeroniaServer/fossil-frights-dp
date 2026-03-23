scoreboard players add $queue_start_token ff_queue_start_token 1
scoreboard players set @a ff_queue_start_token 0
scoreboard players set @a ff_queue_start 0
scoreboard players set @a ff_queue_prompt_time 0
tag @a remove ff_queue_prompt_target
tag @a[tag=ff_in_queue,scores={ff_queue_order=1}] add ff_queue_prompt_target
execute if entity @a[tag=ff_queue_prompt_target] run scoreboard players operation @a[tag=ff_queue_prompt_target] ff_queue_start_token = $queue_start_token ff_queue_start_token
execute if entity @a[tag=ff_queue_prompt_target] run scoreboard players enable @a[tag=ff_queue_prompt_target] ff_queue_start
execute if entity @a[tag=ff_queue_prompt_target] run scoreboard players set @a[tag=ff_queue_prompt_target] ff_queue_prompt_time 1200
execute if entity @a[tag=ff_queue_prompt_target] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.4
execute if entity @a[tag=ff_queue_prompt_target] run function fossil_frights:join/notify_next_message
tag @a remove ff_queue_prompt_target
