execute if score #heist_loot_display ff_heist = $heist_loot ff_heist run return 0

execute store success score #target_changed ff_dummy unless score #heist_loot_display.to ff_heist = $heist_loot ff_heist
execute unless score #heist_loot_display.speed ff_heist matches 1.. run scoreboard players set #target_changed ff_dummy 1
execute if score #target_changed ff_dummy matches 1 run scoreboard players operation #heist_loot_display.from ff_heist = #heist_loot_display ff_heist
execute if score #target_changed ff_dummy matches 1 run scoreboard players operation #heist_loot_display.to ff_heist = $heist_loot ff_heist
execute if score #target_changed ff_dummy matches 1 store result score #heist_loot_display.speed ff_heist run compute default integer {type:"minecraft:max",inputs:[1,{type:"minecraft:div",left:{type:"minecraft:abs",input:{type:"minecraft:sub",left:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#heist_loot_display.to"},score:"ff_heist"},right:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#heist_loot_display.from"},score:"ff_heist"}}},right:20}]}

execute store result score #distance ff_dummy run compute default integer {type:"minecraft:abs",input:{type:"minecraft:sub",left:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#heist_loot_display.to"},score:"ff_heist"},right:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#heist_loot_display"},score:"ff_heist"}}}
execute if score #distance ff_dummy <= #heist_loot_display.speed ff_heist run scoreboard players operation #heist_loot_display ff_heist = $heist_loot ff_heist

execute if score #heist_loot_display ff_heist < #heist_loot_display.to ff_heist run scoreboard players operation #heist_loot_display ff_heist += #heist_loot_display.speed ff_heist
execute if score #heist_loot_display ff_heist > #heist_loot_display.to ff_heist run scoreboard players operation #heist_loot_display ff_heist -= #heist_loot_display.speed ff_heist

execute if score #heist_loot_display ff_heist = $heist_loot ff_heist run scoreboard players reset #heist_loot_display.from ff_heist
execute if score #heist_loot_display ff_heist = $heist_loot ff_heist run scoreboard players reset #heist_loot_display.to ff_heist
execute if score #heist_loot_display ff_heist = $heist_loot ff_heist run scoreboard players reset #heist_loot_display.speed ff_heist

function fossil_frights:game/heists/loot/header