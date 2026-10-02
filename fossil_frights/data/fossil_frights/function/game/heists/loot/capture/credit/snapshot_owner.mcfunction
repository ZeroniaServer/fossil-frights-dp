scoreboard players set #valid_thrower ff_dummy 0
execute on origin if entity @s[type=minecraft:player,tag=ff_heist_stat_thief,gamemode=!spectator] run scoreboard players set #valid_thrower ff_dummy 1
execute if score #valid_thrower ff_dummy matches 0 run return 0
execute on origin run function fossil_frights:entity/match/active
scoreboard players operation @s ff_active_uuid_0 = #match ff_active_uuid_0
scoreboard players operation @s ff_active_uuid_1 = #match ff_active_uuid_1
scoreboard players operation @s ff_active_uuid_2 = #match ff_active_uuid_2
scoreboard players operation @s ff_active_uuid_3 = #match ff_active_uuid_3
tag @s add ff_heist_capture_credit_known
