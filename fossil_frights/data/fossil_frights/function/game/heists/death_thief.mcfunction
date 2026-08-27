scoreboard players add @s ff_heist_deaths_round 1
function fossil_frights:game/heists/loot/high/pickup/lady_bug/death
tag @s add ff_heist_stat_subject
tag @a remove ff_heist_killer_guard
execute if score @s ff_heist_killer_pending matches 1 as @a[team=ff_guard] if score @s ff_active_uuid_0 = @a[tag=ff_heist_stat_subject,limit=1] ff_heist_killer_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_heist_stat_subject,limit=1] ff_heist_killer_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_heist_stat_subject,limit=1] ff_heist_killer_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_heist_stat_subject,limit=1] ff_heist_killer_uuid_3 run tag @s add ff_heist_killer_guard
execute if entity @a[tag=ff_heist_killer_guard,limit=1] run function fossil_frights:advancements/heists/check_stop_right_there
execute if score @s ff_heist_killer_pending matches 1 as @a[team=ff_guard] if score @s ff_active_uuid_0 = @a[tag=ff_heist_stat_subject,limit=1] ff_heist_killer_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_heist_stat_subject,limit=1] ff_heist_killer_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_heist_stat_subject,limit=1] ff_heist_killer_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_heist_stat_subject,limit=1] ff_heist_killer_uuid_3 run scoreboard players add @s ff_heist_thieves_killed_round 1
tag @a remove ff_heist_killer_guard
tag @s remove ff_heist_stat_subject
scoreboard players set @s ff_heist_killer_pending 0
scoreboard players set @s ff_heist_killer_uuid_0 0
scoreboard players set @s ff_heist_killer_uuid_1 0
scoreboard players set @s ff_heist_killer_uuid_2 0
scoreboard players set @s ff_heist_killer_uuid_3 0
function fossil_frights:items/heists/ice_cannon/remove_owned_display
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:air_drag_modifier base reset
attribute @s minecraft:entity_interaction_range base reset
tag @s remove ff_ice_frozen
function fossil_frights:game/heists/jump_boost/restore
function fossil_frights:items/heists/ice_cannon/overlay_hide
function fossil_frights:game/heists/paint_fx/clear
tp @s -1.00 109.00 55.5 180 0
spawnpoint @s -1 109 55
function fossil_frights:player/protection_disable
clear @s
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect clear @s minecraft:slowness
effect clear @s minecraft:blindness
effect clear @s minecraft:invisibility
effect clear @s minecraft:speed
effect clear @s minecraft:water_breathing
effect clear @s minecraft:fire_resistance
effect give @s minecraft:saturation infinite 255 true
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_heist_punch_cd 0
scoreboard players set @s ff_heist_punch_bar 0
scoreboard players set @s ff_heist_punch_fx 0
scoreboard players set @s ff_heist_invis_ticks 0
scoreboard players set @s ff_heist_thaw_fx 0
scoreboard players set @s ff_heist_paint_fx 0
function fossil_frights:game/heists/loadout/thief
execute unless entity @s[tag=ff_rejoin_thief_restore] run function fossil_frights:game/heists/items/grant_hazard_cookie
