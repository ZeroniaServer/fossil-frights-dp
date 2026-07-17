advancement revoke @s only fossil_frights:ice_frozen_hurt
execute unless entity @s[tag=ff_ice_frozen] run return 0
execute at @s as @e[type=minecraft:block_display,tag=ff_ice_freeze,distance=..2.5,sort=nearest,limit=1] at @s run return run function fossil_frights:items/heists/ice_cannon/freeze_end
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:entity_interaction_range base set 3
scoreboard players set @s ff_heist_thaw_fx 60
effect clear @s minecraft:slowness
tag @s remove ff_ice_frozen
