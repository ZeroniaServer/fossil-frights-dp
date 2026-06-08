scoreboard players set $holding_heavy ff_game_state 0
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"treasure_chest"}}}]} run scoreboard players set $holding_heavy ff_game_state 1
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"warden"}}}]} run scoreboard players set $holding_heavy ff_game_state 1
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"crab"}}}]} run scoreboard players set $holding_heavy ff_game_state 1
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"t_rex_skull"}}}]} run scoreboard players set $holding_heavy ff_game_state 1
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"raptor_skull"}}}]} run scoreboard players set $holding_heavy ff_game_state 1
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"biplane"}}}]} run scoreboard players set $holding_heavy ff_game_state 1
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"vault"}}}]} run scoreboard players set $holding_heavy ff_game_state 1
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{itemID:"velociraptor_statue"}}}]} run scoreboard players set $holding_heavy ff_game_state 1
execute if score $holding_heavy ff_game_state matches 1 run effect give @s minecraft:slowness 1 3 true
execute if score $holding_heavy ff_game_state matches 1 run attribute @s minecraft:jump_strength base set 0.2
execute if score $holding_heavy ff_game_state matches 1 run loot replace entity @s armor.head loot fossil_frights:items/heists/loot_bag
execute if score $holding_heavy ff_game_state matches 0 if entity @s[tag=!ff_ice_frozen] run attribute @s minecraft:jump_strength base set 0.42
execute if score $holding_heavy ff_game_state matches 0 if items entity @s armor.head minecraft:feather[minecraft:custom_data~{ff_heavy_loot_bag:1b}] run loot replace entity @s armor.head loot fossil_frights:items/heists/invisimask
