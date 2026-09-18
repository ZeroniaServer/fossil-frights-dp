effect clear @s minecraft:invisibility
function fossil_frights:game/heists/invisibility_fx/check_player
scoreboard players set @s ff_heist_invis_ticks 0
item modify entity @s armor.head fossil_frights:game/heists/invisimask/hidden/off
