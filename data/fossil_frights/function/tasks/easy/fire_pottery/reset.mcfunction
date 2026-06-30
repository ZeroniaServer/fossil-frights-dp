execute if score $fire_pottery_baking ff_task_state matches 1 run schedule function fossil_frights:tasks/easy/fire_pottery/baking/end 40t append
execute if score $fire_pottery_baking ff_task_state matches 1 run return run scoreboard players set $fire_pottery_reset_after_baking ff_task_state 1
scoreboard players reset $fire_pottery_reset_after_baking ff_task_state

setblock 66 79 54 minecraft:campfire[lit=false] strict
setblock 66 79 56 minecraft:campfire[lit=false] strict
setblock 66 79 58 minecraft:campfire[lit=false] strict

schedule clear fossil_frights:tasks/easy/fire_pottery/baking/bake_pot_1
schedule clear fossil_frights:tasks/easy/fire_pottery/baking/bake_pot_2
schedule clear fossil_frights:tasks/easy/fire_pottery/baking/bake_pot_3
schedule clear fossil_frights:tasks/easy/fire_pottery/baking/random_flame
schedule clear fossil_frights:tasks/easy/fire_pottery/baking/end

execute unless score $fire_pottery_sel ff_task_state matches 0 run item modify entity @e[type=minecraft:item_display,tag=ff_fire_pottery_task_pot] contents fossil_frights:fire_pottery_task/set_clay
execute unless score $fire_pottery_sel ff_task_state matches 1 run item modify entity @e[type=minecraft:item_display,tag=ff_fire_pottery_task_pot] contents fossil_frights:fire_pottery_task/set_baked
