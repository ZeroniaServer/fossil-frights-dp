tag @e[type=minecraft:text_display,tag=ff_tutorial_camera] remove ff_tutorial_camera_current
function fossil_frights:entity/match/active
tag @e[limit=1,type=minecraft:text_display,tag=ff_tutorial_camera,predicate=fossil_frights:entity/match/active] add ff_tutorial_camera_current
execute unless entity @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run function fossil_frights:tutorial/camera/summon
execute at @s as @a[distance=..0.000001,gamemode=spectator,team=ff_spectator] run spectate
spectate @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] @s
