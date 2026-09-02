tag @e[type=minecraft:item,tag=ff_heist_capture_credit_snapshot] remove ff_heist_capture_credit_snapshot
tag @s add ff_heist_capture_credit_snapshot
execute on origin if entity @s[type=minecraft:player,tag=ff_heist_stat_thief,gamemode=!spectator] run scoreboard players operation @e[type=minecraft:item,tag=ff_heist_capture_credit_snapshot,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
execute on origin if entity @s[type=minecraft:player,tag=ff_heist_stat_thief,gamemode=!spectator] run scoreboard players operation @e[type=minecraft:item,tag=ff_heist_capture_credit_snapshot,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
execute on origin if entity @s[type=minecraft:player,tag=ff_heist_stat_thief,gamemode=!spectator] run scoreboard players operation @e[type=minecraft:item,tag=ff_heist_capture_credit_snapshot,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
execute on origin if entity @s[type=minecraft:player,tag=ff_heist_stat_thief,gamemode=!spectator] run scoreboard players operation @e[type=minecraft:item,tag=ff_heist_capture_credit_snapshot,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
execute on origin if entity @s[type=minecraft:player,tag=ff_heist_stat_thief,gamemode=!spectator] run tag @e[type=minecraft:item,tag=ff_heist_capture_credit_snapshot,limit=1] add ff_heist_capture_credit_known
tag @s remove ff_heist_capture_credit_snapshot
