execute if score $active_set ff_game_state matches 1 unless entity @s[tag=ff_active] run tellraw @a [{"selector":"@a[tag=ff_active,limit=1]","color":"gold"},{"text":" is already active.","color":"red"}]
execute if score $active_set ff_game_state matches 1 unless entity @s[tag=ff_active] run return 0

scoreboard players set $active_set ff_game_state 1
scoreboard players set $game_running ff_game_state 0
execute store result score $active ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score $active ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score $active ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score $active ff_active_uuid_3 run data get entity @s UUID[3] 1
tag @a[tag=ff_active] remove ff_active
team leave @a[team=ff_active_gold]
tag @s add ff_active
team join ff_active_gold @s
