# Usage: /function fossil_frights:interactions/plaques/create {name:"t_rex"}

execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:interaction,tag=ff_plaque,distance=..0.01] run tellraw @s {text:"There is already a plaque interaction in this block.",color:"red"}
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:interaction,tag=ff_plaque,distance=..0.01] run return fail

$execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~ ~ {Tags:["ff_plaque","ff_plaque_$(name)"],width:1.0f,height:1.1f,response:true,data:{ff_plaque:{name:"$(name)",title:{translate:"ff.plaques.$(name).title",color:"white"},body:{translate:"ff.plaques.$(name).body",color:"white"}}}}
$tellraw @s [{text:"Created plaque: ",color:"white"},{text:"$(name)",color:"white"}]
