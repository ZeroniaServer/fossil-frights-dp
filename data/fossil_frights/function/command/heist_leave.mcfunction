effect clear @s minecraft:invisibility
scoreboard players set @s ff_heist_punch_cd 0
scoreboard players set @s ff_heist_punch_bar 0
scoreboard players set @s ff_heist_punch_fx 0
scoreboard players set @s ff_heist_invis_ticks 0
tag @s remove ff_heist_guard
tag @s remove ff_heist_thief
function fossil_frights:player/lobby_reset_active
