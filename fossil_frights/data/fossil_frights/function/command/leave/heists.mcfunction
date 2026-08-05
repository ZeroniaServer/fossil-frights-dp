function fossil_frights:messages/leave/player_left
effect clear @s minecraft:invisibility
scoreboard players set $alarm_effects_on ff_heist 0
scoreboard players set @s ff_heist_punch_cd 0
scoreboard players set @s ff_heist_punch_bar 0
scoreboard players set @s ff_heist_punch_fx 0
scoreboard players set @s ff_heist_invis_ticks 0
function fossil_frights:player/lobby_reset_active
effect clear @s minecraft:night_vision
effect clear @s minecraft:slowness
stopsound @s record fossil-frights:heists.music
