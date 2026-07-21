effect clear @s minecraft:invisibility
scoreboard players set $alarm_effects_on ff_heist 0
scoreboard players set @s ff_heist_punch_cd 0
scoreboard players set @s ff_heist_punch_bar 0
scoreboard players set @s ff_heist_punch_fx 0
scoreboard players set @s ff_heist_invis_ticks 0
function fossil_frights:player/lobby_reset_active
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:friction_modifier base reset
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:entity_interaction_range base set 3
effect clear @s minecraft:night_vision
effect clear @s minecraft:slowness
