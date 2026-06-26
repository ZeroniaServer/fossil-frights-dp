execute unless score $evolution_sel ff_task_state matches 1 run return 0
execute unless score $evolution_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "evolution"
kill @e[type=minecraft:ocelot,tag=ff_evolution_driver]
execute as @e[type=minecraft:mannequin,tag=ff_evolution] run data merge entity @s {Invulnerable:1b}
effect clear @e[type=minecraft:mannequin,tag=ff_evolution] minecraft:regeneration
execute as @e[type=minecraft:mannequin,tag=ff_evolution_1,limit=1] run tp @s 17 93 13.8 180 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_2,limit=1] run tp @s 17 93 12.2 180 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_3,limit=1] run tp @s 17 93 11.4 180 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_4,limit=1] run tp @s 17 93 10 180 0
particle minecraft:happy_villager 17 94 12 1.0 0.9 2.2 0.08 36 force
playsound minecraft:entity.player.levelup master @a[tag=ff_active,distance=..28] 17 94 12 0.8 1.35
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"evolution"}] 1
scoreboard players set $evolution_done ff_task_state 1
scoreboard players set $evolution_flash_red ff_task_state 0
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
