execute at @s run kill @e[type=minecraft:block_display,tag=ff_ice_freeze,distance=..2.5]
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:friction_modifier base reset
attribute @s minecraft:air_drag_modifier base reset
tag @s remove ff_ice_frozen
function fossil_frights:items/heists/ice_cannon/overlay_hide
clear @s
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_heist_punch_cd 0
scoreboard players set @s ff_heist_punch_bar 0
scoreboard players set @s ff_heist_punch_fx 0
scoreboard players set @s ff_heist_invis_ticks 0
scoreboard players set @s ff_heist_thaw_fx 0
scoreboard players set @s ff_heist_paint_fx 0
effect clear @s minecraft:invisibility
effect clear @s minecraft:speed
loot replace entity @s armor.head loot fossil_frights:items/heists/invisimask
loot replace entity @s container.0 loot fossil_frights:items/heists/loot_book
