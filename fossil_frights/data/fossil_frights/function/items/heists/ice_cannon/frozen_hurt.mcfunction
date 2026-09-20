advancement revoke @s only fossil_frights:misc/ice_frozen_hurt
execute unless entity @s[tag=ff_ice_frozen] run return 0
tag @s add ff_ice_freeze_hurt_owner
execute at @s as @e[type=minecraft:block_display,tag=ff_ice_freeze,distance=..2.5] if score @s ff_active_uuid_0 = @a[tag=ff_ice_freeze_hurt_owner,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_ice_freeze_hurt_owner,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_ice_freeze_hurt_owner,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_ice_freeze_hurt_owner,limit=1] ff_active_uuid_3 at @s run function fossil_frights:items/heists/ice_cannon/freeze_end
tag @s remove ff_ice_freeze_hurt_owner
execute unless entity @s[tag=ff_ice_frozen] run return 0
function fossil_frights:items/heists/ice_cannon/freeze_player/remove_attribute_modifiers
scoreboard players set @s ff_heist_thaw_fx 60
effect clear @s minecraft:slowness
function fossil_frights:items/heists/ice_cannon/overlay_hide
tag @s remove ff_ice_frozen
