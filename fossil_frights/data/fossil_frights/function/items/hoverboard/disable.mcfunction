execute if entity @s[tag=ff_hoverboard_active] unless entity @s[tag=ff_hoverboard_breaking] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..5] ~ ~ ~ 1 1
execute if entity @s[tag=ff_hoverboard_sprinting] run function fossil_frights:items/hoverboard/sprint/disable
execute if predicate fossil_frights:entity/is_riding_hoverboard run execute on vehicle run function fossil_frights:items/hoverboard/remove
execute unless predicate fossil_frights:entity/is_riding_hoverboard run tag @s add ff_hoverboard_owner_current
execute unless predicate fossil_frights:entity/is_riding_hoverboard as @e[type=minecraft:happy_ghast,tag=ff_hoverboard] if score @s ff_hoverboard_uuid_0 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_0 if score @s ff_hoverboard_uuid_1 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_1 if score @s ff_hoverboard_uuid_2 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_2 if score @s ff_hoverboard_uuid_3 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_3 run function fossil_frights:items/hoverboard/remove
execute at @s if block ~ ~ ~ #fossil_frights:air_like if block ~ ~-1 ~ #fossil_frights:air_like run tp @s ~ ~-1 ~
tag @s remove ff_hoverboard_active
function fossil_frights:items/hoverboard/durability/clear_all_active
tag @s remove ff_hoverboard_owner_current
