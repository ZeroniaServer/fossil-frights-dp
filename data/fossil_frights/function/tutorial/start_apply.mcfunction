execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
tag @s add ff_tutorial
scoreboard players set @s ff_tutorial 1
scoreboard players set @s ff_tutorial_scene 1
scoreboard players set @s ff_tutorial_tick 0
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base set 1
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
gamemode spectator @s
spectate
function fossil_frights:util/fade/queue/tutorial_enter
