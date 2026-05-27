function fossil_frights:animations/vending_machine/success_effects
function fossil_frights:items/drinks/raptor_rush
summon minecraft:item 26.5 81.5 16.5 {Tags:["ff_vending_drink_new"],PickupDelay:10,Item:{id:"minecraft:stone",count:1}}
data modify entity @e[type=minecraft:item,tag=ff_vending_drink_new,limit=1,sort=nearest] Item set from storage fossil_frights:items definitions.drinks.raptor_rush
tag @e[type=minecraft:item,tag=ff_vending_drink_new,limit=1,sort=nearest] remove ff_vending_drink_new
title @s actionbar [{"text":"Purchased: ","color":"yellow"},{"text":"Raptor Rush","color":"green"}]
