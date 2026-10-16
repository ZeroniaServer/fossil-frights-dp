execute unless entity @e[type=minecraft:mannequin,tag=ff_herobrine,tag=ff_herobrine_seen,limit=1] run function fossil_frights:messages/frights/herobrine_left
execute unless entity @e[type=minecraft:mannequin,tag=ff_herobrine,tag=ff_herobrine_seen,limit=1] at @e[type=minecraft:mannequin,tag=ff_herobrine,tag=!ff_herobrine_seen,limit=1] run particle minecraft:sonic_boom ~ ~0.8 ~ 0.1 0.5 0.1 0 12 force
tag @e[type=minecraft:mannequin,tag=ff_herobrine,tag=!ff_herobrine_seen,limit=1] add ff_herobrine_seen
scoreboard players set @e[type=minecraft:mannequin,tag=ff_herobrine,tag=ff_herobrine_seen,limit=1] ff_herobrine_delay 8
