tag @s remove ff_tutorial
function fossil_frights:tutorial/camera/kill_owned
scoreboard players set @s ff_tutorial 0
scoreboard players set @s ff_tutorial_scene 0
scoreboard players set @s ff_tutorial_tick 0
spectate
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base set 1
title @s actionbar ""
function fossil_frights:util/fade/queue/tutorial_exit
spawnpoint @s 0 80 0
gamemode adventure @s
function fossil_frights:player/protection_enable
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:instant_health 100 0 true
execute unless entity @s[tag=ff_skip_plushie_restore] run function fossil_frights:items/plushies/restore
