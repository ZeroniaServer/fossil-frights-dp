scoreboard players set $fire_pottery_baking ff_task_state 0

item modify entity @e[type=minecraft:item_display,tag=ff_fire_pottery_task_pot] contents fossil_frights:fire_pottery_task/set_baked

schedule clear fossil_frights:tasks/easy/fire_pottery/baking/end
execute if score $fire_pottery_reset_after_baking ff_task_state matches 1 run function fossil_frights:tasks/easy/fire_pottery/reset
