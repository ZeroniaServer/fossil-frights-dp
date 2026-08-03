effect clear @s minecraft:invisibility
scoreboard players set @s ff_heist_invis_ticks 0
execute if score @s ff_heist_paint_fx matches 1.. run tag @s remove ff_paint_overlay
execute if score @s ff_heist_paint_fx matches 1.. run item modify entity @s armor.head fossil_frights:game/heists/paint_overlay/show
execute if score @s ff_heist_paint_fx matches 1.. run tag @s add ff_paint_overlay
execute if score @s ff_heist_paint_fx matches 1.. run return 0
item modify entity @s armor.head fossil_frights:game/heists/invisimask/show
