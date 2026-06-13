scoreboard players add $queue_start_token ff_queue_start_token 1
scoreboard players set @a ff_queue_start_token 0
scoreboard players set @a ff_queue_start 0
scoreboard players set @a ff_queue_prompt_time 0
tag @a remove ff_queue_prompt_target
tag @a[tag=ff_in_queue,scores={ff_queue_order=1}] add ff_queue_prompt_target
execute if entity @a[limit=1,tag=ff_queue_prompt_target] run scoreboard players operation @a[tag=ff_queue_prompt_target] ff_queue_start_token = $queue_start_token ff_queue_start_token
execute if entity @a[limit=1,tag=ff_queue_prompt_target] run scoreboard players enable @a[tag=ff_queue_prompt_target] ff_queue_start
execute if entity @a[limit=1,tag=ff_queue_prompt_target] run scoreboard players set @a[tag=ff_queue_prompt_target] ff_queue_prompt_time 1200
execute as @a[tag=ff_queue_prompt_target,limit=1] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if entity @a[limit=1,tag=ff_queue_prompt_target] run function fossil_frights:messages/queue/up_next_prompt
tag @a remove ff_queue_prompt_target
