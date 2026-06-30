scoreboard players set $fire_pottery_baking ff_task_state 1

setblock 66 79 54 minecraft:campfire[lit=true] strict
setblock 66 79 56 minecraft:campfire[lit=true] strict
setblock 66 79 58 minecraft:campfire[lit=true] strict

data modify storage fossil_frights:fire_pottery args set value {}
execute store result score #bake_pot_1_delay ff_dummy store result storage fossil_frights:fire_pottery args.bake_pot_1_delay int 1 run random value 5..10
execute store result score #bake_pot_2_delay ff_dummy run random value 5..10
execute store result storage fossil_frights:fire_pottery args.bake_pot_2_delay int 1 run scoreboard players operation #bake_pot_2_delay ff_dummy += #bake_pot_1_delay ff_dummy
execute store result score #bake_pot_3_delay ff_dummy run random value 5..10
execute store result storage fossil_frights:fire_pottery args.bake_pot_3_delay int 1 run scoreboard players operation #bake_pot_3_delay ff_dummy += #bake_pot_2_delay ff_dummy

function fossil_frights:tasks/easy/fire_pottery/baking/start_macro with storage fossil_frights:fire_pottery args
data remove storage fossil_frights:fire_pottery args

schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 1t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 2t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 3t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 4t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 5t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 6t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 7t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 8t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 9t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 10t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 11t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 12t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 13t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 14t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 15t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 16t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 17t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 18t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 19t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 20t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 21t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 22t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 23t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 24t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 25t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 26t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 27t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 28t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 29t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 30t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 31t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 32t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 33t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 34t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 35t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 36t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 37t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 38t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/random_flame 39t append
schedule function fossil_frights:tasks/easy/fire_pottery/baking/end 40t
