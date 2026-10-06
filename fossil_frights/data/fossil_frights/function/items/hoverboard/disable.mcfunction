execute if entity @s[tag=ff_hoverboard_active] unless entity @s[tag=ff_hoverboard_breaking] at @s run playsound fossil_frights:hoverboard.disable master @a[distance=..5] ~ ~ ~ 1 1
execute if entity @s[tag=ff_hoverboard_sprinting] run function fossil_frights:items/hoverboard/sprint/disable
execute if predicate fossil_frights:entity/is_riding_hoverboard run execute on vehicle run function fossil_frights:items/hoverboard/remove
execute unless predicate fossil_frights:entity/is_riding_hoverboard run scoreboard players operation #match ff_hoverboard_uuid_0 = @s ff_active_uuid_0
execute unless predicate fossil_frights:entity/is_riding_hoverboard run scoreboard players operation #match ff_hoverboard_uuid_1 = @s ff_active_uuid_1
execute unless predicate fossil_frights:entity/is_riding_hoverboard run scoreboard players operation #match ff_hoverboard_uuid_2 = @s ff_active_uuid_2
execute unless predicate fossil_frights:entity/is_riding_hoverboard run scoreboard players operation #match ff_hoverboard_uuid_3 = @s ff_active_uuid_3
execute unless predicate fossil_frights:entity/is_riding_hoverboard as @e[type=minecraft:happy_ghast,tag=ff_hoverboard,predicate=fossil_frights:entity/match/hoverboard] run function fossil_frights:items/hoverboard/remove
execute at @s if block ~ ~ ~ #fossil_frights:air_like if block ~ ~-1 ~ #fossil_frights:air_like align xyz positioned ~0.5 ~-1 ~0.5 run tp @s ~ ~ ~
tag @s remove ff_hoverboard_active
tag @s remove ff_hoverboard_activation_grace
function fossil_frights:items/hoverboard/durability/clear_all_active
