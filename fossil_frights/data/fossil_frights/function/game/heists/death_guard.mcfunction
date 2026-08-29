scoreboard players add @s ff_heist_deaths_round 1
function fossil_frights:game/heists/loot/rare/pickup/lady_bug/death
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:air_drag_modifier base reset
function fossil_frights:game/heists/jump_boost/restore
function fossil_frights:items/heists/ice_cannon/overlay_hide
function fossil_frights:game/heists/paint_fx/clear
function fossil_frights:items/heists/camera_remote/exit
function fossil_frights:items/heists/trap/save_state
tp @s 20 70 20 0 0
spawnpoint @s 20 70 20
function fossil_frights:player/protection_disable
clear @s
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect clear @s minecraft:slowness
effect clear @s minecraft:blindness
effect give @s minecraft:saturation infinite 255 true
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
function fossil_frights:game/heists/loadout/guard
function fossil_frights:items/heists/trap/load_state
