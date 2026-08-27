attribute @s minecraft:jump_strength base reset
attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:friction_modifier base reset
scoreboard players set @s ff_heist_thaw_fx 60
effect clear @s minecraft:slowness
function fossil_frights:items/heists/ice_cannon/overlay_hide
tag @s remove ff_ice_frozen
