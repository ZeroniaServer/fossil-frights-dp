advancement revoke @s only fossil_frights:misc/ice_frozen_hurt
execute unless entity @s[tag=ff_ice_frozen] run return 0
function fossil_frights:entity/match/active
execute at @s as @e[limit=1,type=minecraft:block_display,tag=ff_ice_freeze,distance=..2.5,predicate=fossil_frights:entity/match/active] at @s run function fossil_frights:items/heists/ice_cannon/freeze_end
execute unless entity @s[tag=ff_ice_frozen] run return 0
function fossil_frights:items/heists/ice_cannon/freeze_player/remove_attribute_modifiers
scoreboard players set @s ff_heist_thaw_fx 60
effect clear @s minecraft:slowness
function fossil_frights:items/heists/ice_cannon/overlay_hide
tag @s remove ff_ice_frozen
