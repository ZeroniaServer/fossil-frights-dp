scoreboard players set #owner ff_dummy 0
execute on target if entity @s[type=minecraft:player,tag=ff_rock.player] run scoreboard players set #owner ff_dummy 1
data remove entity @s interaction

execute on vehicle if entity @s[type=minecraft:item_display,tag=ff_rock.brain] unless predicate fossil_frights:entity/rock/can_be_picked_up run return fail
execute if score #owner ff_dummy matches 1 run return 1
return fail
