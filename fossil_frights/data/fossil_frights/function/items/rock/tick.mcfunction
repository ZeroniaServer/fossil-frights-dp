execute as @e[type=#fossil_frights:thrown_items_and_snowballs,tag=!ff_rock.checked] at @s run function fossil_frights:items/rock/process/new

execute as @e[type=minecraft:armor_stand,tag=ff_rock.physics,tag=!ff_rock.stopped_moving,predicate=fossil_frights:entity/on_ground] at @s run function fossil_frights:items/rock/process/stopped_moving
execute as @e[type=minecraft:armor_stand,tag=ff_rock.physics,tag=!ff_rock.stopped_moving] on passengers on passengers if entity @s[type=minecraft:item_display,tag=ff_rock.brain] at @s run function fossil_frights:items/rock/process/while_moving

schedule function fossil_frights:items/rock/tick 1t
