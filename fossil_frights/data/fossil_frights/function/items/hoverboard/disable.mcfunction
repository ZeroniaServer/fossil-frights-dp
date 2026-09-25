tag @s add ff_hoverboard_owner_current
execute as @e[type=minecraft:happy_ghast,tag=ff_hoverboard] if score @s ff_hoverboard_uuid_0 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_0 if score @s ff_hoverboard_uuid_1 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_1 if score @s ff_hoverboard_uuid_2 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_2 if score @s ff_hoverboard_uuid_3 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_3 run function fossil_frights:items/hoverboard/remove
execute at @s if block ~ ~ ~ #fossil_frights:air_like if block ~ ~-1 ~ #fossil_frights:air_like run tp @s ~ ~-1 ~
tag @s remove ff_hoverboard_owner_current
tag @s remove ff_hoverboard_active
function fossil_frights:items/hoverboard/visibility
