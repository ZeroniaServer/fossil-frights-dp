tag @a remove ff_heist_capture_credit_recipient

function fossil_frights:entity/match/active
execute if entity @s[tag=ff_heist_capture_credit_known] run tag @a[limit=1,tag=ff_heist_stat_thief,gamemode=!spectator,predicate=fossil_frights:entity/match/active] add ff_heist_capture_credit_recipient

execute unless entity @a[tag=ff_heist_capture_credit_recipient,limit=1] on origin if entity @s[type=minecraft:player,tag=ff_heist_stat_thief,gamemode=!spectator] run tag @s add ff_heist_capture_credit_recipient

execute unless entity @a[tag=ff_heist_capture_credit_recipient,limit=1] as @a[tag=ff_heist_stat_thief,gamemode=!spectator,sort=nearest,limit=1,distance=..10] run tag @s add ff_heist_capture_credit_recipient

execute unless entity @a[tag=ff_heist_capture_credit_recipient,limit=1] run return 0
return 1
