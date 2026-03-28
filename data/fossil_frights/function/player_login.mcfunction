execute if entity @s[team=ff_dev_mode] run return 0
team leave @s
tag @s remove ff_active
tag @s remove ff_forced_spectate
tag @s remove ff_in_queue
scoreboard players set @s ff_queue_order 0
scoreboard players set @s ff_queue_prompt_time 0
scoreboard players set @s ff_queue_start 0
scoreboard players set @s ff_queue_start_token 0
scoreboard players set @s ff_cmd_start 0
scoreboard players set @s ff_cmd_leave 0
scoreboard players set @s ff_cmd_spectate 0
scoreboard players enable @s ff_queue_start
scoreboard players enable @s ff_cmd_start
scoreboard players enable @s ff_cmd_leave
scoreboard players enable @s ff_cmd_spectate
clear @s
item replace entity @s armor.head with air
tp @s 0 80 0 0 0
spawnpoint @s 0 80 0
gamemode adventure @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:instant_health 100 0 true
function fossil_frights:tasks/final/plushies/restore
