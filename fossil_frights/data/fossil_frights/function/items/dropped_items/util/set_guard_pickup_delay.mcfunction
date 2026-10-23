execute unless entity @s[type=minecraft:item] run return 0
execute store result score #pickup_delay ff_dummy run data get entity @s PickupDelay
execute store result score @s ff_dropped_item_guard_pickup_blocked_until_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#pickup_delay"},score:"ff_dummy"},20]}
