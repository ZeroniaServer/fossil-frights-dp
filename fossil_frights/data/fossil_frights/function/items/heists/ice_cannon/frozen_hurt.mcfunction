advancement revoke @s only fossil_frights:ice_frozen_hurt
execute unless entity @s[tag=ff_ice_frozen] run return 0
tag @s add ff_ice_freeze_hurt_owner
execute at @s as @e[type=minecraft:block_display,tag=ff_ice_freeze,distance=..2.5] if score @s ff_active_uuid_0 = @a[tag=ff_ice_freeze_hurt_owner,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_ice_freeze_hurt_owner,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_ice_freeze_hurt_owner,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_ice_freeze_hurt_owner,limit=1] ff_active_uuid_3 at @s run function fossil_frights:items/heists/ice_cannon/freeze_end
tag @s remove ff_ice_freeze_hurt_owner
execute unless entity @s[tag=ff_ice_frozen] run return 0
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:entity_interaction_range base set 3
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:friction_modifier base reset
scoreboard players set @s ff_heist_thaw_fx 60
effect clear @s minecraft:slowness
function fossil_frights:items/heists/ice_cannon/overlay_hide
tag @s remove ff_ice_frozen
