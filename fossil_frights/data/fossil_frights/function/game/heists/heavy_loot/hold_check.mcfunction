scoreboard players set $holding_heavy ff_game_state 0
# These should all be given a "heavy" custom data tag rather than having these item IDs be hardcoded here
execute if predicate fossil_frights:player/inventory/treasure_chest run scoreboard players set $holding_heavy ff_game_state 1
execute if predicate fossil_frights:player/inventory/warden run scoreboard players set $holding_heavy ff_game_state 1
execute if predicate fossil_frights:player/inventory/crab run scoreboard players set $holding_heavy ff_game_state 1
execute if predicate fossil_frights:player/inventory/t_rex_skull run scoreboard players set $holding_heavy ff_game_state 1
execute if predicate fossil_frights:player/inventory/raptor_skull run scoreboard players set $holding_heavy ff_game_state 1
execute if predicate fossil_frights:player/inventory/biplane run scoreboard players set $holding_heavy ff_game_state 1
execute if predicate fossil_frights:player/inventory/vault run scoreboard players set $holding_heavy ff_game_state 1
execute if predicate fossil_frights:player/inventory/velociraptor_statue run scoreboard players set $holding_heavy ff_game_state 1
execute if score $holding_heavy ff_game_state matches 1 run attribute @s minecraft:movement_speed base set 0.055
execute if score $holding_heavy ff_game_state matches 1 run attribute @s minecraft:jump_strength base set 0
execute if score $holding_heavy ff_game_state matches 1 run loot replace entity @s armor.head loot fossil_frights:items/heists/loot_bag
execute if score $holding_heavy ff_game_state matches 0 run attribute @s minecraft:movement_speed base reset
execute if score $holding_heavy ff_game_state matches 0 if entity @s[tag=!ff_ice_frozen] run attribute @s minecraft:jump_strength base set 0.42
execute if score $holding_heavy ff_game_state matches 0 if items entity @s armor.head minecraft:feather[minecraft:custom_data~{ff_heavy_loot_bag:true}] run loot replace entity @s armor.head loot fossil_frights:items/heists/invisimask
