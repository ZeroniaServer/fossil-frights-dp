tag @s remove ff_ant_fight
function fossil_frights:ant_fight/lobby_sneak/reset
scoreboard players set @s ff_ant_fight 0
attribute @s minecraft:scale base set 1
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
execute if items entity @s weapon.mainhand minecraft:snowball[custom_data~{ff_ant_leaf:1b}] run item replace entity @s weapon.mainhand with air
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:snowball",components:{"minecraft:custom_data":{ff_ant_leaf:1b}}}]} run item replace entity @s weapon.offhand with air
clear @s minecraft:snowball[minecraft:custom_data~{ff_ant_leaf:1b}]
kill @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_data":{ff_ant_leaf:1b}}}}]
title @s actionbar ""
tp @s 0 80 0 0 0
spawnpoint @s 0 80 0
