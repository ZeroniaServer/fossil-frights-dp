execute if score @s ff_heist_invis_ticks matches 1.. run item modify entity @s armor.head fossil_frights:game/heists/ice_frozen_overlay/hide_hidden
execute if score @s ff_heist_invis_ticks matches 1.. run tag @s remove ff_ice_frozen_overlay
execute if score @s ff_heist_invis_ticks matches 1.. if score @s ff_heist_paint_fx matches 1.. run tag @s remove ff_paint_overlay
execute if score @s ff_heist_invis_ticks matches 1.. if score @s ff_heist_paint_fx matches 1.. run function fossil_frights:game/heists/paint_fx/overlay_show
execute if score @s ff_heist_invis_ticks matches 1.. run return 0
item modify entity @s armor.head fossil_frights:game/heists/ice_frozen_overlay/hide
tag @s remove ff_ice_frozen_overlay
execute if score @s ff_heist_paint_fx matches 1.. run tag @s remove ff_paint_overlay
execute if score @s ff_heist_paint_fx matches 1.. run function fossil_frights:game/heists/paint_fx/overlay_show
