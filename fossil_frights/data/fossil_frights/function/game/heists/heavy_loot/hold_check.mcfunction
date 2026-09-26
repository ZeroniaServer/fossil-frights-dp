execute store success score $holding_heavy ff_game_state if predicate fossil_frights:player/inventory/heavy_loot
tag @s remove ff_holding_heavy

execute if score $holding_heavy ff_game_state matches 1 run tag @s add ff_holding_heavy
execute if score $holding_heavy ff_game_state matches 1 run function fossil_frights:game/heists/heavy_loot/apply_attribute_modifiers
execute if score $holding_heavy ff_game_state matches 1 unless items entity @s armor.head *[minecraft:custom_data~{ff_invisimask:{loot_bag:true}}] run item modify entity @s armor.head fossil_frights:game/heists/invisimask/set_loot_bag_contents
execute if score $holding_heavy ff_game_state matches 1 unless items entity @s armor.head *[minecraft:custom_data~{ff_invisimask:{loot_bag:true}}] run item modify entity @s armor.head fossil_frights:game/heists/invisimask/loot_bag/on

execute if score $holding_heavy ff_game_state matches 0 run function fossil_frights:game/heists/heavy_loot/remove_attribute_modifiers
execute if score $holding_heavy ff_game_state matches 0 if items entity @s armor.head *[minecraft:custom_data~{ff_invisimask:{loot_bag:true}}] run item modify entity @s armor.head fossil_frights:game/heists/invisimask/loot_bag/off
