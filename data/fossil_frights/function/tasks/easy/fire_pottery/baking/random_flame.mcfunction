execute store result storage fossil_frights:fire_pottery args.x_offset float 0.01 run random value -50..50
execute store result storage fossil_frights:fire_pottery args.z_offset float 0.01 run random value -50..50

execute at @e[limit=1,sort=random,type=minecraft:item_display,tag=ff_fire_pottery_task_pot] positioned ~ ~-2 ~ align xyz positioned ~0.5 ~0.5375 ~0.5 run function fossil_frights:tasks/easy/fire_pottery/baking/random_flame_macro with storage fossil_frights:fire_pottery args
data remove storage fossil_frights:fire_pottery args
