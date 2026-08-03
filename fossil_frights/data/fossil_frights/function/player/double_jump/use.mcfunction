tag @s remove ff_double_jump_ready
tag @s remove ff_double_jump_released
tag @s add ff_double_jump_used
scoreboard players set @s ff_double_jump_cooldown 8
execute at @s positioned ~ ~-0.15 ~ run particle minecraft:gust ~ ~ ~ 0.1 0.02 0.1 0.01 3
tag @s add ff_double_jump_boosting
scoreboard players set @s ff_double_jump_boost_timer 5
scoreboard players set @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] ff_double_jump_boost_timer 4
effect give @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] minecraft:levitation 1 12 true
effect give @s[team=!ff_thief] minecraft:levitation 1 15 true
execute unless entity @s[team=ff_thief,predicate=fossil_frights:player/inventory/heavy_loot] run effect give @s minecraft:levitation 1 15 true
playsound minecraft:entity.breeze.wind_burst player @s ~ ~ ~ 0.55 1.55
