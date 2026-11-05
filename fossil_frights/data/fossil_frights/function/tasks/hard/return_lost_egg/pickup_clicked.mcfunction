advancement revoke @s only fossil_frights:tasks/hard/return_lost_egg/pickup_click
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $return_lost_egg_sel ff_task_state matches 1 run return 0
execute unless score $return_lost_egg_done ff_task_state matches 0 run return 0
execute unless score $return_lost_egg_picked ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute if entity @a[predicate=fossil_frights:player/inventory/lost_egg,limit=1] run return 0
execute if entity @e[type=minecraft:item,predicate=fossil_frights:entity/contents/lost_egg,limit=1] run return 0
scoreboard players set $return_lost_egg_picked ff_task_state 1
execute as @e[type=#fossil_frights:display_entities,tag=ff_lost_egg] run data modify entity @s view_range set value 0
kill @e[type=minecraft:interaction,tag=ff_return_lost_egg_click]
loot give @s loot fossil_frights:items/tasks/return_lost_egg/lost_egg
