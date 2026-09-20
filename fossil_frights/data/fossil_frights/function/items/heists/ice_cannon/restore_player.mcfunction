function fossil_frights:items/heists/ice_cannon/freeze_player/remove_attribute_modifiers
scoreboard players set @s ff_heist_thaw_fx 60
effect clear @s minecraft:slowness
function fossil_frights:items/heists/ice_cannon/overlay_hide
tag @s remove ff_ice_frozen
