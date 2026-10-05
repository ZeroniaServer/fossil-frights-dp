# Bouncy ball
execute if score $type_roll ff_sulfur matches 1 if predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:bamboo_planks"
execute if score $type_roll ff_sulfur matches 1 unless predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:magenta_glazed_terracotta"
# Basketball
execute if score $type_roll ff_sulfur matches 2 if predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:resin_block"
execute if score $type_roll ff_sulfur matches 2 unless predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:brown_glazed_terracotta"
# Puck
execute if score $type_roll ff_sulfur matches 3 if predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:netherite_block"
execute if score $type_roll ff_sulfur matches 3 unless predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:purple_glazed_terracotta"
# Beach ball
execute if score $type_roll ff_sulfur matches 4 if predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:white_wool"
execute if score $type_roll ff_sulfur matches 4 unless predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:white_glazed_terracotta"
# Soccer ball
execute if score $type_roll ff_sulfur matches 5 if predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:grass_block"
execute if score $type_roll ff_sulfur matches 5 unless predicate fossil_frights:world/is_realms run data modify storage fossil_frights:sulfur_strikers ball.block set value "minecraft:cyan_glazed_terracotta"
