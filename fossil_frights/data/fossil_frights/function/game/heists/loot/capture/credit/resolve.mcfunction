tag @a remove ff_heist_capture_credit_recipient
tag @e[type=minecraft:item,tag=ff_heist_capture_credit_source] remove ff_heist_capture_credit_source
tag @s add ff_heist_capture_credit_source

execute if entity @s[tag=ff_heist_capture_credit_known] as @a[tag=ff_heist_stat_thief,gamemode=!spectator] if score @s ff_active_uuid_0 = @e[type=minecraft:item,tag=ff_heist_capture_credit_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:item,tag=ff_heist_capture_credit_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:item,tag=ff_heist_capture_credit_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:item,tag=ff_heist_capture_credit_source,limit=1] ff_active_uuid_3 run tag @s add ff_heist_capture_credit_recipient

execute unless entity @a[tag=ff_heist_capture_credit_recipient,limit=1] on origin if entity @s[type=minecraft:player,tag=ff_heist_stat_thief,gamemode=!spectator] run tag @s add ff_heist_capture_credit_recipient

execute unless entity @a[tag=ff_heist_capture_credit_recipient,limit=1] as @a[tag=ff_heist_stat_thief,gamemode=!spectator,sort=nearest,limit=1,distance=..10] run tag @s add ff_heist_capture_credit_recipient

tag @s remove ff_heist_capture_credit_source
execute unless entity @a[tag=ff_heist_capture_credit_recipient,limit=1] run return 0
return 1
