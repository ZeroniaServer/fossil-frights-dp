execute unless block ~ ~ ~ minecraft:cave_vines[berries=true] unless block ~ ~ ~ minecraft:cave_vines_plant[berries=true] run tellraw @s {color:"red",text:"There is no glowberry cave vine block here"}
execute unless block ~ ~ ~ minecraft:cave_vines[berries=true] unless block ~ ~ ~ minecraft:cave_vines_plant[berries=true] run return fail
execute if function fossil_frights:interactions/glowberry_vine/create/check_occupied run return run tellraw @s {color:"red",text:"This block is already occupied by a custom glowberry interaction"}

data modify storage fossil_frights:glowberry entity_data set value {Tags:["ff_glowberry_vine"],data:{ff_glowberry_vine:{}},response:true,width:1.001,height:1.1}
execute if block ~ ~ ~ minecraft:cave_vines run data modify storage fossil_frights:glowberry entity_data.data.ff_glowberry_vine.block_type set value "minecraft:cave_vines"
execute if block ~ ~ ~ minecraft:cave_vines_plant run data modify storage fossil_frights:glowberry entity_data.data.ff_glowberry_vine.block_type set value "minecraft:cave_vines_plant"
execute align xyz positioned ~0.5 ~-0.1 ~0.5 summon minecraft:interaction run function fossil_frights:interactions/glowberry_vine/create/summon
data remove storage fossil_frights:glowberry entity_data
