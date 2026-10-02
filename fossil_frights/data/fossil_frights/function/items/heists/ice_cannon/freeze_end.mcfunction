particle minecraft:dust{color:[0.65f,0.9f,1.0f],scale:1.0f} ~ ~ ~ 0.75 0.75 0.75 0.12 80 force
particle minecraft:snowflake ~ ~ ~ 0.65 0.65 0.65 0.05 45 force
particle minecraft:poof ~ ~ ~ 0.45 0.45 0.45 0.08 24 force
playsound minecraft:block.glass.break player @a[distance=..24] ~ ~ ~ 0.9 0.85
tag @a remove ff_ice_freeze_owner
function fossil_frights:entity/match/active
tag @a[limit=1,predicate=fossil_frights:entity/match/active] add ff_ice_freeze_owner
execute as @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] run function fossil_frights:items/heists/ice_cannon/freeze_player/remove_attribute_modifiers
scoreboard players set @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] ff_heist_thaw_fx 60
effect clear @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] minecraft:slowness
tag @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] remove ff_ice_frozen
execute as @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen_overlay] run function fossil_frights:items/heists/ice_cannon/overlay_hide
tag @a remove ff_ice_freeze_owner
kill @s
