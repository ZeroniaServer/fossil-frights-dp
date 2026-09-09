execute unless block ~ ~-1 ~ minecraft:decorated_pot run tellraw @s {color:"red",text:"There is no decorated pot below you"}
execute unless block ~ ~-1 ~ minecraft:decorated_pot run return fail
execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:interaction,tag=ff_decorated_pot,distance=..0.01] run return run tellraw @s {color:"red",text:"This decorated pot is already a custom interaction pot"}

data modify storage fossil_frights:decorated_pot display_data set value {Tags:["ff_decorated_pot","ff_decorated_pot.display","ff_decorated_pot.centered"],item_display:"fixed",item:{id:"minecraft:decorated_pot",count:1,components:{"minecraft:pot_decorations":[]}},transformation:{translation:[0f,0.5f,0f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},width:1.5,height:1.5}
data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" set from block ~ ~-1 ~ sherds
data modify storage fossil_frights:decorated_pot decorations set from block ~ ~-1 ~ sherds
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=south] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" set value []
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=south] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[3]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=south] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[2]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=south] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[1]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=south] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[0]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=east] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" set value []
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=east] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[1]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=east] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[3]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=east] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[0]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=east] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[2]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=west] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" set value []
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=west] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[2]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=west] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[0]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=west] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[3]
execute if block ~ ~-1 ~ minecraft:decorated_pot[facing=west] run data modify storage fossil_frights:decorated_pot display_data.item.components."minecraft:pot_decorations" append from storage fossil_frights:decorated_pot decorations[1]
execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~0 ~0.5 run function fossil_frights:interactions/decorated_pots/create/summon_display with storage fossil_frights:decorated_pot
execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~ ~ {Tags:["ff_decorated_pot"],width:0.875,height:1.0,response:true}
setblock ~ ~-1 ~ air strict
setblock ~ ~-1 ~ weathered_copper_golem_statue strict
data remove storage fossil_frights:decorated_pot display_data
data remove storage fossil_frights:decorated_pot decorations
