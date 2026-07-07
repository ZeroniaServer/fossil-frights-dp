execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
tag @s add ff_tutorial
scoreboard players set @s ff_tutorial 1
scoreboard players set @s ff_tutorial_scene 1
scoreboard players set @s ff_tutorial_tick 0
function fossil_frights:tutorial/camera/summon
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base set 1
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
gamemode spectator @s
execute at @s as @a[distance=..0.000001,gamemode=spectator,team=ff_spectator] run spectate
spectate @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] @s
function fossil_frights:util/fade/queue/tutorial_enter
