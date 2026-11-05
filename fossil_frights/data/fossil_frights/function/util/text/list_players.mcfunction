scoreboard players reset @a ff_dummy
scoreboard players set #list_players_amount ff_dummy 0
$execute as $(selector) store result score @s ff_dummy run scoreboard players add #list_players_amount ff_dummy 1
execute as @a[scores={ff_dummy=1..}] if score @s ff_dummy = #list_players_amount ff_dummy run tag @s add ff_list_player.last

execute if score #list_players_amount ff_dummy matches 0 run return run data modify storage fossil_frights:text list_players set value ""
execute if score #list_players_amount ff_dummy matches 1 run data modify storage fossil_frights:text list_players set value ["",{selector:"@a[limit=1,scores={ff_dummy=1..}]"}]
execute if score #list_players_amount ff_dummy matches 2 run data modify storage fossil_frights:text list_players set value ["",{selector:"@a[scores={ff_dummy=1..}]",separator:{translate:"ff.separator.and"}}]
execute if score #list_players_amount ff_dummy matches 3.. run data modify storage fossil_frights:text list_players set value ["",{selector:"@a[scores={ff_dummy=1..},tag=!ff_list_player.last]",separator:{translate:"ff.separator.comma"}},{translate:"ff.separator.and"},{selector:"@a[limit=1,tag=ff_list_player.last]"}]

execute as @a[limit=1] run loot replace block 0 0 0 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",modifier:{type:"minecraft:set_name",entity:"this",name:{storage:"fossil_frights:text",nbt:"list_players",interpret:true}}}]}]}
data modify storage fossil_frights:text list_players set from block 0 0 0 Items[0].components.minecraft:custom_name

tag @a[tag=ff_list_player.last] remove ff_list_player.last
scoreboard players reset @a ff_dummy
