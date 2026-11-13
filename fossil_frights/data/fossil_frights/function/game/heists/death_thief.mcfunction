scoreboard players add @s ff_heist_deaths_round 1
function fossil_frights:game/heists/loot/secure_loot/clear_player
tag @s add ff_heist_key_return_thief
execute as @a[predicate=fossil_frights:player/team/guard,scores={ff_heist_guard_has_key=0}] run function fossil_frights:game/heists/key/return_from_thief
tag @s remove ff_heist_key_return_thief
function fossil_frights:game/heists/punch/death_penalty
function fossil_frights:items/heists/ice_cannon/remove_owned_display
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:air_drag_modifier base reset
attribute @s minecraft:entity_interaction_range base reset
tag @s remove ff_ice_frozen
function fossil_frights:game/heists/jump_boost/restore
function fossil_frights:items/heists/ice_cannon/overlay_hide
function fossil_frights:game/heists/paint_fx/clear
tp @s -1.00 109.1875 55.5 180 0
spawnpoint @s -1 109 55
function fossil_frights:player/protection_disable
clear @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect clear @s minecraft:slowness
effect clear @s minecraft:blindness
effect clear @s minecraft:invisibility
function fossil_frights:game/heists/invisibility_fx/check_player
effect clear @s minecraft:speed
effect clear @s minecraft:water_breathing
effect clear @s minecraft:fire_resistance
scoreboard players reset @s ff_key_cooldown
scoreboard players reset @s ff_heist_punch_cd
scoreboard players set @s ff_heist_punch_fx 0
scoreboard players reset @s ff_heist_invis_ticks
scoreboard players reset @s ff_heist_thaw_fx
scoreboard players reset @s ff_heist_paint_fx
function fossil_frights:game/heists/loadout/thief
execute unless entity @s[tag=ff_rejoin_thief_restore] run function fossil_frights:game/heists/items/grant_evilnog
