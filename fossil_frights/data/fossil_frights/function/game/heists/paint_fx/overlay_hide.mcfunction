execute unless entity @s[tag=ff_paint_overlay] run return 0
execute if score @s ff_heist_invis_ticks matches 1.. run item modify entity @s armor.head fossil_frights:game/heists/paint_overlay/hide_hidden
execute if score @s ff_heist_invis_ticks matches 1.. run tag @s remove ff_paint_overlay
execute if score @s ff_heist_invis_ticks matches 1.. run return 0
item modify entity @s armor.head fossil_frights:game/heists/paint_overlay/hide
tag @s remove ff_paint_overlay
