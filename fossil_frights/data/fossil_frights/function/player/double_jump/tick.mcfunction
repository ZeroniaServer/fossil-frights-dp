execute if entity @s[gamemode=creative] run tag @s remove ff_double_jump_ready
execute if entity @s[gamemode=creative] run tag @s remove ff_double_jump_released
execute if entity @s[gamemode=creative] run tag @s remove ff_double_jump_jumping
execute if entity @s[gamemode=creative] run tag @s remove ff_double_jump_used
execute if entity @s[gamemode=creative] run function fossil_frights:player/double_jump/clear_boost
execute if entity @s[gamemode=creative] run return 0

execute if entity @s[tag=ff_ice_frozen] run tag @s remove ff_double_jump_ready
execute if entity @s[tag=ff_ice_frozen] run tag @s remove ff_double_jump_released
execute if entity @s[tag=ff_ice_frozen] run tag @s remove ff_double_jump_jumping
execute if entity @s[tag=ff_ice_frozen] run tag @s remove ff_double_jump_used
execute if entity @s[tag=ff_ice_frozen,tag=ff_double_jump_boosting] run function fossil_frights:player/double_jump/clear_boost
execute if entity @s[tag=ff_ice_frozen] run return 0

execute if entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] run tag @s remove ff_double_jump_ready
execute if entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] run tag @s remove ff_double_jump_released
execute if entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] run tag @s remove ff_double_jump_jumping
execute if entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] run tag @s remove ff_double_jump_used
execute if entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] if entity @s[tag=ff_double_jump_boosting] run function fossil_frights:player/double_jump/clear_boost
execute if entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] run return 0

execute unless predicate fossil_frights:entity/effects/luck run tag @s remove ff_double_jump_ready
execute unless predicate fossil_frights:entity/effects/luck run tag @s remove ff_double_jump_released
execute unless predicate fossil_frights:entity/effects/luck run tag @s remove ff_double_jump_jumping
execute unless predicate fossil_frights:entity/effects/luck run tag @s remove ff_double_jump_used
execute unless predicate fossil_frights:entity/effects/luck if entity @s[tag=ff_double_jump_boosting] run function fossil_frights:player/double_jump/clear_boost
execute unless predicate fossil_frights:entity/effects/luck run return 0

execute if predicate fossil_frights:entity/touching_water run tag @s remove ff_double_jump_ready
execute if predicate fossil_frights:entity/touching_water run tag @s remove ff_double_jump_released
execute if predicate fossil_frights:entity/touching_water run tag @s remove ff_double_jump_jumping
execute if predicate fossil_frights:entity/touching_water run tag @s remove ff_double_jump_used
execute if predicate fossil_frights:entity/touching_water if entity @s[tag=ff_double_jump_boosting] run function fossil_frights:player/double_jump/clear_boost
execute if predicate fossil_frights:entity/touching_water run return 0

scoreboard players add @s ff_double_jump_cooldown 0
execute if score @s ff_double_jump_cooldown matches 1.. run scoreboard players remove @s ff_double_jump_cooldown 1
scoreboard players add @s ff_double_jump_ground_ticks 0
execute if predicate fossil_frights:entity/on_ground run scoreboard players add @s ff_double_jump_ground_ticks 1
execute unless predicate fossil_frights:entity/on_ground run scoreboard players set @s ff_double_jump_ground_ticks 0

execute if score @s ff_double_jump_boost_timer matches 1.. run scoreboard players remove @s ff_double_jump_boost_timer 1
execute if entity @s[tag=ff_double_jump_boosting] if score @s ff_double_jump_boost_timer matches 0 run function fossil_frights:player/double_jump/clear_boost

execute if predicate fossil_frights:entity/on_ground run tag @s add ff_double_jump_ready
execute if predicate fossil_frights:entity/on_ground run tag @s remove ff_double_jump_released
execute if predicate fossil_frights:entity/on_ground unless entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] run tag @s remove ff_double_jump_used
execute if score @s ff_double_jump_ground_ticks matches 3.. if entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] run tag @s remove ff_double_jump_used
execute unless predicate fossil_frights:entity/on_ground unless predicate fossil_frights:player/input/jump if entity @s[tag=ff_double_jump_ready,tag=!ff_double_jump_used] run tag @s add ff_double_jump_released
execute unless predicate fossil_frights:entity/on_ground if score @s ff_double_jump_cooldown matches 0 if entity @s[tag=ff_double_jump_ready,tag=ff_double_jump_released,tag=!ff_double_jump_jumping,tag=!ff_double_jump_used] if predicate fossil_frights:player/input/jump run function fossil_frights:player/double_jump/use
execute if predicate fossil_frights:player/input/jump run tag @s add ff_double_jump_jumping
execute unless predicate fossil_frights:player/input/jump run tag @s remove ff_double_jump_jumping
